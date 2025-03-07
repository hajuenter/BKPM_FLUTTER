import 'package:flutter/material.dart';

class MoodEntryForm extends StatefulWidget {
  const MoodEntryForm({super.key});

  @override
  State<MoodEntryForm> createState() => _MoodEntryFormState();
}

class _MoodEntryFormState extends State<MoodEntryForm> {
  final TextEditingController _moodController = TextEditingController();
  final TextEditingController _feelingsController = TextEditingController();
  final TextEditingController _intensityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Tambah Mood Kamu Hari ini"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Mood"),
            TextField(
              controller: _moodController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Mood",
              ),
            ),
            const SizedBox(height: 10),
            const Text("Feelings"),
            TextField(
              controller: _feelingsController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const Text("Mood Intensity"),
            TextField(
              controller: _intensityController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _saveMood();
                },
                child: const Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _saveMood() {
    // Simpan data mood ke backend atau database
    print("Mood: ${_moodController.text}");
    print("Feelings: ${_feelingsController.text}");
    print("Intensity: ${_intensityController.text}");

    // Setelah disimpan, kembali ke halaman utama
    Navigator.pop(context);
  }
}
