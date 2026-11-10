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
                CircleAvatar(
                  radius: 50,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, size: 50),
                ),

                const SizedBox(height: 16),

                Text(
                  "Bayu Sukma",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),

                const SizedBox(height: 5),

                Text(
                  "NIM: 1124160034",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 5),

                Text(
                  "Prodi: Teknik Informatika - Software Engineering",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
