import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../../app/theme/AppColors.dart';
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
          appBar: AppBar(
            leading: Stack(children: [
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: IconButton(
                    onPressed: () => model.goBack(),
                    icon: const Icon(Icons.arrow_back)),
              )
            ]),
            title: const Text('Chatbot'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.maroni,
            elevation: 0,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: Container(
                    child: Text(
                      'Today, ${DateFormat("Hm").format(DateTime.now())}',
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.maroni),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Divider(
                  height: 1,
                  thickness: 1.5,
                  color: AppColors.maroni,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: const Color(0xff808080).withOpacity(.12),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
