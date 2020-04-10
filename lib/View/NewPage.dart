import 'package:flutter/material.dart';
import 'package:inappflutter/Model/FetchDataModel.dart';
import 'package:inappflutter/ViewModel/ConnectFetchViewModel.dart';
import 'package:provider/provider.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FetchDataModelWrapper result = Provider.of<ConnectFetchViewModel>(context).result;
    return Scaffold(
      body: Center(
        child: Text("NEW PAFG"),
      ),
    );
  }
}
