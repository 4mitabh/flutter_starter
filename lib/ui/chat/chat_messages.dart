import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:fire_starter/controllers/theme_controller.dart';
import 'package:fire_starter/services/storage_service.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/services/database_service.dart';
import 'package:fire_starter/ui/components/widgets/glass/blob.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatMessagesUI extends StatelessWidget {
  static Widget builder(String chatId, [RouteSettings? routeSettings]) =>
      GetBuilder<ChatMessagesController>(init: ChatMessagesController(chatId), builder: (controller) => ChatMessagesUI(controller));

  ChatMessagesUI(this._chatMessagesController);
  final ChatMessagesController _chatMessagesController;
  Widget build(BuildContext context) {
    return Scaffold(body: BlobBackground(child: Obx(() => buildMessageList(context))));
  }

  Widget buildMessageList(BuildContext context) {
    print(AuthService.to.firestoreUser.value?.id);
    return DashChat(
        inverted: true,
        user: _chatMessagesController.user,
        messages: _chatMessagesController.messeges,
        onSend: _chatMessagesController.onSend,
        onQuickReply: _chatMessagesController.onQuickReply,
        inputDecoration: InputDecoration.collapsed(hintText: ""),
        alwaysShowSend: true,
        inputContainerStyle: ThemeController.to.appTheme.value.kGradientBoxDecoration(context).copyWith(borderRadius: BorderRadius.zero),
        showTraillingBeforeSend: true,
        trailing: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: _chatMessagesController.onUploadPhoto,
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: _chatMessagesController.onUploadVideo,
          )
        ],
        messageImageBuilder: messageImageBuilder);
  }

  Widget messageImageBuilder(String? url, [ChatMessage? message]) {
    if (message != null) {
      return (message.customProperties?['tn']?['h'] != null)
          ? (message.customProperties?['image'] != null)
              ? CachedNetworkImage(
                  errorWidget: (_, __, ___) => Column(
                        children: [CachedNetworkImage(imageUrl: message.customProperties?['oringinalimage']), Text('Failed to load')],
                      ),
                  placeholder: (context, url) => AspectRatio(
                      aspectRatio: message.customProperties?['tn']['w'] / message.customProperties?['tn']['h'],
                      child: BlurHash(hash: message.customProperties?['tn']['i'])),
                  imageUrl: message.customProperties?['image'] ?? '')
              : AspectRatio(
                  aspectRatio: message.customProperties?['tn']['w'] / message.customProperties?['tn']['h'],
                  child: BlurHash(hash: message.customProperties?['tn']['i']))
          : CachedNetworkImage(
              imageUrl: message.customProperties?['image'],
              errorWidget: (_, __, ___) => CachedNetworkImage(imageUrl: message.customProperties?['oringinalimage']));
    } else
      return Container();
  }
}

class ChatMessagesController extends GetxController {
  static ChatMessagesController to = Get.find();
  final _authService = AuthService.to;

  final RxList<ChatMessage> messeges = <ChatMessage>[].obs;
  final String _chatId;

  ChatMessagesController(this._chatId);

  get user {
    var userVal = _authService.firestoreUser.value!;
    return ChatUser(
      name: userVal.name,
      uid: userVal.id,
      avatar: userVal.photoUrl,
    );
  }

  @override
  void onReady() async {
    super.onReady();
    Query query = FirebaseFirestore.instance.collectionGroup('workflows').where('business', isEqualTo: _chatId).orderBy('ts', descending: true).limit(100);
    var messageDocs = await DatabaseService.query(query, useCache: true);
    messeges(messageDocs
        .map((e) => ChatMessage(
            id: e.id,
            createdAt: DateTime.fromMicrosecondsSinceEpoch((e.properties['ts'] as Timestamp).microsecondsSinceEpoch),
            image: e.properties['image'],
            video: e.properties['video'],
            text: e.properties['title'] ?? '',
            customProperties: e.properties,
            quickReplies: QuickReplies(
              values: <Reply>[
                Reply(
                  title: "😋 Yes, ${e.properties['title']}",
                  value: "Yes",
                ),
                Reply(
                  title: "😞 Nope.  ${e.properties['title']}",
                  value: "no",
                ),
              ],
            ),
            user: ChatUser(uid: e.properties['by'], avatar: _authService.firestoreUser.value!.photoUrl, name: e.properties['by'])))
        .toList());
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSend(ChatMessage chatMessage) {
    print('Seinding ${chatMessage.text}');
    Map<String, dynamic> data = {
      'title': chatMessage.text,
      'plan': _chatId,
      'type': 'messaging',
      'action': 'message',
      'outlet': _chatId,
      'business': _chatId,
      'user': uidToWriteTo
    };

    DatabaseService.create(uploadPath, data);
  }

  get uidToWriteTo => recipientTable[_authService.firebaseUser.value!.uid] ?? _authService.firebaseUser.value!.uid;

  String get uploadPath {
    return '/users/${uidToWriteTo}/workflows';
  }

  static Map recipientTable = {
    // 782 mgr : ag-user
    "ssC9QMbDbPdvOcTsk5i9ckQrphC2": "pzFxRC60xWVEzsgGvQSoPLlk4U03",
    // 855 mgr : am-user
    "1E1lFkgkLwPyrP6rxTmzG7Gn6xK2": "0x3sskyeDKhXKRefhdtrDZnOUla2"
  };

  onQuickReply(Reply reply) => onSend(ChatMessage(text: reply.value, user: user));

  void onUploadPhoto() {
    StorageService.packAndUploadPhoto(path: uploadPath, metadata: {
      'title': 'New Photo',
      'plan': _chatId,
      'type': 'messaging',
      'action': 'message',
      'outlet': _chatId,
      'business': _chatId,
      'user': uidToWriteTo
    });
  }

  void onUploadVideo() {
    StorageService.packAndUploadVideo(path: uploadPath, metadata: {
      'title': 'New Video',
      'plan': _chatId,
      'type': 'messaging',
      'action': 'message',
      'outlet': _chatId,
      'business': _chatId,
      'user': uidToWriteTo
    });
  }
}
