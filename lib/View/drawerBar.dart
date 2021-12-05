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
              'Perfil',
              style: const TextStyle(color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/accountOptions');
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
              Navigator.pushNamed(context, '/livroFavorito');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.power_settings_new,
              color: Colors.deepPurple,
            ),
            title: const Text(
              'Sair',
              style: const TextStyle(color: Colors.deepPurple),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
