import 'package:flutter/material.dart';
import '../widgets/left_drawer.dart';
import 'moodentry_form.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String selectedOption =
      "Pilih Mood"; // Variabel untuk menyimpan pilihan dropdown
  final List<String> moodOptions = [
    "Bahagia",
    "Sedih",
    "Marah",
    "Tenang",
    "Cemas"
  ]; // List opsi dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Tracker'),
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Menambahkan ScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  UserInfoCard(label: "NPM", value: "5000000000"),
                  UserInfoCard(label: "Name", value: "BKPM FLUTTER"),
                  UserInfoCard(label: "Class", value: "TIF B2"),
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
              const SizedBox(height: 20),
              const Text(
                "Warna Gradient",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              // Kotak dengan warna gradient
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.red, Colors.yellow],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Stay positive and track your mental health!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "assets/hhh.png",
                width: double.infinity,
                fit: BoxFit.cover, 
              ),
              const SizedBox(height: 20),
              // Dropdown Button
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedOption,
                    items: [
                      const DropdownMenuItem(
                        value: "Pilih Mood",
                        child: Text("Pilih Mood"),
                      ),
                      ...moodOptions.map((String mood) {
                        return DropdownMenuItem(
                          value: mood,
                          child: Text(mood),
                        );
                      }).toList(),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedOption = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
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
