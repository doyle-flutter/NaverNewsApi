import 'package:flutter/material.dart';
import 'package:inappflutter/Model/FetchDataModel.dart';
import 'package:inappflutter/View/NewPage.dart';
import 'package:inappflutter/ViewModel/ConnectFetchViewModel.dart';
import 'package:provider/provider.dart';


class NaverNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FetchDataModelWrapper result = Provider.of<ConnectFetchViewModel>(context).result;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.contacts),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => NewPage()
                )
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:
          result == null
          ? loadingWidget()
          : ListView.builder(
            itemCount: result.items.length,
            itemBuilder:(context, int index){
              FetchDataModel ff = result.items[index];
              return Text(ff.title.toString());
            }
          ),
        )
      ),
    );
  }

  Widget loadingWidget() => Builder(
    builder: (context) => Container(
      height:MediaQuery.of(context).size.height,
      child: Center(
        child: CircularProgressIndicator(),
      )
    ),
  );
}


