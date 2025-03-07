import 'package:flutter/material.dart';
import '../widgets/left_drawer.dart';
import 'moodentry_form.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Tracker'),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                UserInfoCard(label: "NPM", value: "5000000000"),
                UserInfoCard(label: "Name", value: "Gedagedi Gedagedago"),
                UserInfoCard(label: "Class", value: "PBP S"),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome to Mental Health Tracker",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              children: [
                ActionButton(
                  icon: Icons.emoji_emotions,
                  label: "Lihat Mood",
                  onTap: () {},
                ),
                ActionButton(
                  icon: Icons.add,
                  label: "Tambah Mood",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MoodEntryForm()),
                    );
                  },
                ),
                ActionButton(
                  icon: Icons.logout,
                  label: "Logout",
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserInfoCard extends StatelessWidget {
  final String label;
  final String value;

  const UserInfoCard({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ActionButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 40, color: Colors.purple),
          onPressed: onTap,
        ),
        Text(label),
      ],
    );
  }
}
