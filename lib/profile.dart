import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:picpals/main.dart';
import 'package:picpals/user_info/manage_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              UserInfo.resetInfo();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePage(
                            title: 'Picpals',
                          )));
            },
            child: const Text('Déconnexion'),
          )
        ],
      ),
    );
  }
}