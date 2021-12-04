import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountOptions extends StatefulWidget {
  const AccountOptions({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AccountOptionsState createState() => _AccountOptionsState();
}

class _AccountOptionsState extends State<AccountOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: SvgPicture.asset(
                    'assets/undraw_personal_information_re_vw8a.svg'),
                width: 250,
                height: 250,
                margin: EdgeInsets.only(bottom: 10, top: 20),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 190,
                      height: 50,
                      child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');},
                          label: Text('Editar perfil')),
                        margin: EdgeInsets.only(bottom: 20, top: 20)
                    ),
                    Container(
                      width: 190,
                      height: 50,
                      child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.pushNamed(context, '/');},
                          label: Text('Excluir conta')),
                        margin: EdgeInsets.only(bottom: 20)
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
