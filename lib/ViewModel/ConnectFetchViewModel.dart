
import 'package:flutter/material.dart';
import 'package:inappflutter/Model/FetchDataModel.dart';
import 'package:inappflutter/Repository/ConnectFetch.dart';

class ConnectFetchViewModel with ChangeNotifier{

  FetchDataModelWrapper _result;
  FetchDataModelWrapper get result => _result;

  Future<FetchDataModelWrapper> _naverNews() async{
    _result = await ConnectFetch().fetch();
    notifyListeners();
  }

  ConnectFetchViewModel(){
    _naverNews();
  }





}