import 'package:flutter/material.dart';
import 'package:soal2_profile_page/models/profile.dart';

class ProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Profile _profile = const Profile(
    name: "Bayu Sukma",
    nim: "1124160034",
    prodi: "Teknik Informatika",
    kelas: "TI 24 SE-3",
    bio: "Start your day with a cup of coffee~",
    email: "1124160034@global.ac.id",
    phone: "08881785876",
    github: "Codenames-Ren",
  );

  @override
  Widget build(BuildContext context) {
    final p = _profile;

    return Scaffold(
      appBar: AppBar(title: const Text("Profile Mahasiswa")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/foto.jpeg"),
            ),
          ),

          const SizedBox(height: 12),
          Text(
            p.name,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),

          Text("NIM ${p.nim}", textAlign: TextAlign.center),
          Text("${p.prodi} • Kelas ${p.kelas}", textAlign: TextAlign.center),

          const SizedBox(height: 12),

          Text(
            p.bio,
            textAlign: TextAlign.center,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    );
  }
}
