import 'package:flutter/material.dart';
import 'package:myfilmjson/pageparts/mainbottomnev.dart';
import 'package:myfilmjson/pages/moviedetail.dart';
import 'package:myfilmjson/pages/movilistpage.dart';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Film App',
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNevMain(),
        MovieListPage.routNameForMovieList: (context) => MovieListPage(),
        Moviedetails.routNamemoviedetails: (context) => Moviedetails(),
      },
    );
  }
}
