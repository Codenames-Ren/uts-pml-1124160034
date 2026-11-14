import 'package:flutter/material.dart';
import 'package:soal2_profile_page/widgets/stats_item.dart';

class ProfileStat extends StatelessWidget {
  const ProfileStat({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const StatsItem(count: "1.5K", label: "Followers"),
        const SizedBox(width: 24),
        const StatsItem(count: "400", label: "Following"),
      ],
    );
  }
}
