import 'package:aaab/app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.getFact(),
            backgroundColor: AppColors.primary,
            child: const Text('fact'),
          ),
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
                  child: Text(
                    'Today, ${DateFormat("Hm").format(DateTime.now())}',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.maroni),
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: ListView(
                  shrinkWrap: true,
                  children: List.generate(
                    model.facts.length,
                    (int index) => ListTile(
                      title: Container(
                        decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(.6),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(model.facts[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
