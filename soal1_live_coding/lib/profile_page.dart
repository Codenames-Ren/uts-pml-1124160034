import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final Icon icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(leading: icon, title: Text(label), subtitle: Text(value));
  }
}

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
            icon: Icon(Icons.settings, color: Colors.blueAccent),
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

                const SizedBox(height: 18),

                Padding(
                  padding: EdgeInsets.all(16),

                  child: Column(
                    children: [
                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.email),
                          label: "Email",
                          value: "1124160034@global.ac.id",
                        ),
                      ),

                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.phone),
                          label: "Phone",
                          value: "08881785876",
                        ),
                      ),
                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.school),
                          label: "Kelas",
                          value: "TI 24 SE-3",
                        ),
                      ),

                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.code_off),
                          label: "Github",
                          value: "Codenames-Ren",
                        ),
                      ),

                      const SizedBox(height: 16),

                      Align(
                        alignment: AlignmentGeometry.centerLeft,
                        child: Text("Hobi & Keahlian"),
                      ),

                      const SizedBox(height: 16),

                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.code),
                          label: "Codings",
                          value: "Go & React Natives",
                        ),
                      ),
                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.games),
                          label: "Gaming",
                          value: "RPG Games",
                        ),
                      ),
                      const Card(
                        child: InfoTile(
                          icon: Icon(Icons.coffee),
                          label: "Lazy",
                          value: "Drinking Coffee~",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Terima kasih sudah mengunjungi profil saya~"),
            ),
          );
        },
        child: Icon(Icons.favorite, color: Colors.blueAccent),
      ),
    );
  }
}
