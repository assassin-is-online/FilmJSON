import 'package:flutter/material.dart';
import 'package:myfilmjson/data/data.dart';

import 'moviedetail.dart';

class MovieListPage extends StatelessWidget {
  static const routNameForMovieList = "/movielistpage";
  const MovieListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      appBar: AppBar(
        title: Text('Watch my move list!'),
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: films.length,
          itemBuilder: (context, index) {
            var thismovie = films[index];
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  Moviedetails.routNamemoviedetails,
                  arguments: thismovie,
                );
              },
              child: Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                height: 70,
                width: MediaQuery.of(context).size.width * 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xFF606060),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                      ),
                    ),
                    Text(thismovie["Title"])
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
