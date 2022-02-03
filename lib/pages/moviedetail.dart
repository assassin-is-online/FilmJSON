import 'package:flutter/material.dart';

class Moviedetails extends StatelessWidget {
  static const routNamemoviedetails = "/moviedetail.dart";
  const Moviedetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reciver = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(reciver["title"]),
      ),
    );
  }
}
