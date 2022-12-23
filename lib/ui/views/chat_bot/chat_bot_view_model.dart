import 'dart:convert';
import 'package:aaab/app/core/base_view_model.dart';
import 'package:http/http.dart' as http;

class ChatBotViewModel extends BaseViewModel {
  ChatBotViewModel(context) : super(context);
  Future<void> init() async {}

  Future<void> getFact() async {
    Uri url = Uri.https('catfact.ninja', '/fact', {'max_length': '200'});
    http.Response _res = await http.get(url);

    if (_res.statusCode == 200) {
      _facts.add(jsonDecode(_res.body)['fact']);
    }
    notifyListeners();
  }

  final List<String> _facts = [];
  List<String> get facts => _facts;
}
