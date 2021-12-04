import 'package:flutter/material.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              'What2Read',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Colors.deepPurple,
            ),
            title: const Text(
              'Editar Perfil',
              style: const TextStyle(color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: Colors.deepPurple,
            ),
            title: const Text(
              'Favoritos',
              style: const TextStyle(color: Colors.deepPurple),
            ),
            onTap: () {
              // Navigator.pushNamed(context, '/savedBooks');
            },
          ),
        ],
      ),
    );
  }
}
