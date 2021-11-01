import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text(widget.title))),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              height: 250.0,
              width: 250.0,
              child: Image.asset('assets/banner_pequeno.png')),
          Flexible(
            child: Text(
              'Lorem ipsum dolor sit amet. Aut optio perferendis non minima '
              'voluptate a eaque ullam ut facere eius eos debitis ipsa '
              'et culpa dolor. Sed laborum dolorum qui ipsam '
              'esse et suscipit quam 33 '
              'earum dolorem eos commodi dolore '
              'rem accusantium explicabo. Est dignissimos'
              ' rerum est quasi maiores non impedit earum '
              'ad modi facere architecto porro non voluptates delectus.',
              style: TextStyle(
                color: Colors.black87,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, '/onboarding');
            },
            label: Text("Cadastre-se"),
          ),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.white70, shadowColor: Colors.green),
            child: Text(
              'Já tenho uma conta',
              style: TextStyle(
                  color: Colors.black87, decoration: TextDecoration.underline),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
        ],
      )),
    ); //floatingActionButton: // This trailing comma makes auto-formatting nicer for build methods
  }
}
