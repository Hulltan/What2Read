import 'package:flutter/material.dart';

void main() {
  runApp(bookPage());
}

class bookPage extends StatelessWidget {
  bookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Text(
            "Nome_do_Livro",
            style: TextStyle(fontWeight: FontWeight.w100, fontSize: 14),
          ),
          product(),
          description
        ],
      ),
    ));
  }

  Widget product() {
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(
            'assets/hungergames_cover.jpg',
          ),
          Positioned(
            child: FloatingActionButton(
                elevation: 2,
                child: Image.asset(
                  'assets/bookmark_icon.png',
                  width: 30,
                  height: 30,
                ),
                backgroundColor: Colors.white,
                onPressed: () {}),
            bottom: 0,
            right: 20,
          ),
        ],
      ),
    );
  }

  var description = Container(
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In "
        "rutrum at ex non eleifend. Aenean sed eros a purus "
        "gravida scelerisque id in orci. Mauris elementum id "
        "nibh et dapibus. Maecenas lacinia volutpat magna",
        textAlign: TextAlign.justify,
        style: TextStyle(height: 1.5, color: Color(0xFF6F8398)),
      ),
      padding: EdgeInsets.all(16));
}
