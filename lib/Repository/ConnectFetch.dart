import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:inappflutter/Model/FetchDataModel.dart';
import 'package:inappflutter/Model/ConnectURLModel.dart';

class ConnectFetch{

  FetchDataModelWrapper _parse(Map<String, dynamic> json) => FetchDataModelWrapper.toJson(json);

  Future<FetchDataModelWrapper> fetch({String query, int ea}) async{
    ConnectURL _connectRepo = new ConnectURL(query: query, ea: ea);
    var res = await http.get(_connectRepo.url, headers: _connectRepo.userHeader);
    return _parse(json.decode(res.body));
  }


}