import 'package:inappflutter/Model/ConnectUserModel.dart';


class ConnectURL{
  // API ex : https://openapi.naver.com/v1/search/news.json?query=%EC%98%A4%EB%8A%98&start=10

  String query = "속보";
  int ea = 10;

  ConnectURL({ this.query, this.ea}){
    if(this.query == null) this.query = "속보";
    if(this.ea == null) this.ea = 10;
    if(this.ea > 999) this.ea = 999;
  }

  String get userid => ConnectUser.USER_ID;
  String get userKey => ConnectUser.USER_KEY;
  Map<String, String> get userHeader => ConnectUser.USER_HEADER_DATA;

  final String _endPoint = "https://openapi.naver.com/v1/search/news.json";

  String get url => "$_endPoint?query=${this.query}&start=1&display=${this.ea}&sort=sim";

}