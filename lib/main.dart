import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'What2Read'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    int length = 2;
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(widget.title, textAlign: TextAlign.center))
    ),
    body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200.0,
          width: 200.0,
            child: Image.asset('assets/banner_pequeno.png')
        ),
        SizedBox(
          width: 400,
          height: 100,
          child: Text('Lorem ipsum dolor sit amet. Aut optio perferendis non minima '
                'voluptate a eaque ullam ut facere eius eos debitis ipsa '
                'et culpa dolor. Sed laborum dolorum qui ipsam '
                'esse et suscipit quam 33 ''earum dolorem eos commodi dolore '
                'rem accusantium explicabo. Est dignissimos'
                ' rerum est quasi maiores non impedit earum '
                'ad modi facere architecto porro non voluptates delectus.',
              style: TextStyle(color: Colors.black87, ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            onPressed: _incrementCounter,
            label: Text("Cadastre-se"),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Colors.white70,
              shadowColor: Colors.green),
          child: Text(
            'Já tenho uma conta',
            style: TextStyle(
              color: Colors.black87,
                decoration: TextDecoration.underline
            ),
          ),
          onPressed: () {},
        ),
      ],
    )
    ),
    );//floatingActionButton: // This trailing comma makes auto-formatting nicer for build methods
  }
}
