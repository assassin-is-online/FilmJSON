import 'package:flutter/material.dart';
import 'package:myfilmjson/pages/favoritepage.dart';
import 'package:myfilmjson/pages/movilistpage.dart';

class BottomNevMain extends StatefulWidget {
  const BottomNevMain({Key? key}) : super(key: key);

  @override
  _BottomNevMainState createState() => _BottomNevMainState();
}

class _BottomNevMainState extends State<BottomNevMain> {
  int nevbarindex = 0;
  List<Widget> whatwillbehomepage = [
    MovieListPage(),
    FavoritePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: whatwillbehomepage[nevbarindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie List'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite')
        ],
        onTap: (value) {
          setState(() {
            nevbarindex = value;
          });
        },
      ),
    );
  }
}
