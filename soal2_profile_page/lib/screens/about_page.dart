import 'package:flutter/material.dart';
import 'package:soal2_profile_page/widgets/about.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Me")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            "Skill and Hobbies",
            style: Theme.of(context).textTheme.titleLarge,
          ),

          const Card(
            child: Column(
              children: [
                About(
                  icon: Icon(Icons.code),
                  label: "Mobile Programming",
                  value: "Flutter and React Natives",
                ),
                About(
                  icon: Icon(Icons.code_sharp),
                  label: "Backend Dev",
                  value: "Go, Javascript, and PHP",
                ),
                About(
                  icon: Icon(Icons.games),
                  label: "Gaming",
                  value: "Chilling and Lazyness~",
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Text("Education"),

          const Card(
            child: Column(
              children: [
                About(
                  icon: Icon(Icons.school),
                  label: "Elementary School",
                  value: "SDN Pasar Kemis I",
                ),
                About(
                  icon: Icon(Icons.school),
                  label: "Junior High School",
                  value: "MTS AL-ISTIQAMAH",
                ),
                About(
                  icon: Icon(Icons.school),
                  label: "Senior High Schoool",
                  value: "SMKN 2 Kab. Tangerang",
                ),
                About(
                  icon: Icon(Icons.school),
                  label: "Higher Education Institution",
                  value: "Global Institute",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
