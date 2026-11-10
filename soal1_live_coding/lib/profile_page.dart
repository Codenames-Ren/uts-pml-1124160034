import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Mahasiswa"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Sedang dalam pengembangan")),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(),
            child: Column(
              children: [
                CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
