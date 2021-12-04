import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(AccountOptions(title: 'title'));
}

class AccountOptions extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp (
        home: AccountOptions(title: 'title')
    );
  }
  const AccountOptions({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AccountOptionsState createState() => _AccountOptionsState();

}

class _AccountOptionsState extends State<AccountOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), centerTitle: true,),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: SvgPicture.asset('assets/undraw_personal_information_re_vw8a.svg'),
              width: 250,
              height: 250,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Container(
              child: Column(
                children: [
                  FloatingActionButton.extended(
                      onPressed: () {Navigator.pushNamed(context, '/');},
                      label: Text('Editar perfil'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}