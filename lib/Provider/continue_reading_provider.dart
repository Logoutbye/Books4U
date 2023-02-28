import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContinueReadingProvider with ChangeNotifier {
  String? _bookName;

  String? _url;
   String? get url => _url;
  String? get bookName => _bookName;



  // Save book information to local storage
  Future<void> saveBookInfo(String bookName, String url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('bookName', bookName);
    prefs.setString('url', url);
    notifyListeners();
    
  }
  
  Future<Map<String, String>> getBookInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _bookName = prefs.getString('bookName');
    _url = prefs.getString('url');
    notifyListeners();
    return {'bookName': _bookName!, 'url': _url!};
  }



 
}
