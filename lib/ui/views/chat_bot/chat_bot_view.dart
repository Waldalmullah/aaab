import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './chat_bot_view_model.dart';

class ChatBotView extends StatelessWidget {
  const ChatBotView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatBotViewModel>.reactive(
      viewModelBuilder: () => ChatBotViewModel(context),
      onModelReady: (ChatBotViewModel model) async => await model.init(),
      builder: (BuildContext context, ChatBotViewModel model, Widget? child) {
        return Scaffold(
          body: Center(
            child: Text(
              'ChatBotView',
            ),
          ),
        );
      },
    );
  }
}
