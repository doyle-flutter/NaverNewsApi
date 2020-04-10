import 'package:flutter/material.dart';
import 'package:inappflutter/View/NaverNewsPage.dart';
import 'package:inappflutter/ViewModel/ConnectFetchViewModel.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider<ConnectFetchViewModel>(
        create: (_) => new ConnectFetchViewModel(),
      )
    ],
    child: MaterialApp(
      home: NaverNewsPage()
    )
  )
);

