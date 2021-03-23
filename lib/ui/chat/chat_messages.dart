import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat/dash_chat.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/services/database_service.dart';
import 'package:fire_starter/ui/components/widgets/glass/blob.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatMessagesUI extends StatelessWidget {
  static Widget builder([RouteSettings? routeSettings]) =>
      GetBuilder<ChatMessagesController>(init: ChatMessagesController(), builder: (controller) => ChatMessagesUI(controller));

  ChatMessagesUI(this._chatMessagesController);
  final ChatMessagesController _chatMessagesController;

  Widget build(BuildContext context) {
    return Scaffold(body: BlobBackground(child: Obx(() => buildMessageList(context))));
  }

  Widget buildMessageList(BuildContext context) {
    print(AuthService.to.firestoreUser.value?.id);
    return DashChat(
      user: _chatMessagesController.user,
      messages: _chatMessagesController.messeges,
      onSend: (ChatMessage chatMessage) {},
    );
  }
}

class ChatMessagesController extends GetxController {
  static ChatMessagesController to = Get.find();
  final _authService = AuthService.to;

  final RxList<ChatMessage> messeges = <ChatMessage>[].obs;

  get user {
    print(_authService.firestoreUser.value.id);
    return ChatUser(
      name: _authService.firestoreUser.value.name,
      uid: _authService.firestoreUser.value.id,
      avatar: _authService.firestoreUser.value.photoUrl,
    );
  }
  // List<ChatMessage> messeges() {
  //   return [];
  // }

  @override
  void onReady() async {
    super.onReady();
    var messageDocs = await DatabaseService.collection(FirebasePaths.prefix + FirebasePaths.chat(user.uid), useCache: true, limit: 50, orderby: 'ts');
    messeges(messageDocs
        .map((e) => ChatMessage(
            id: e.id,
            createdAt: DateTime.fromMicrosecondsSinceEpoch((e.properties['ts'] as Timestamp).microsecondsSinceEpoch),
            image: e.properties['image'],
            video: e.properties['video'],
            text: e.properties['title'] ?? '',
            quickReplies: QuickReplies(
              values: <Reply>[
                Reply(
                  title: "😋 Yes",
                  value: "Yes",
                ),
                Reply(
                  title: "😞 Nope. What?",
                  value: "no",
                ),
              ],
            ),
            user: ChatUser(uid: e.properties['by'], name: e.properties['by'])))
        .toList());
  }

  @override
  void onClose() {
    super.onClose();
  }
}
