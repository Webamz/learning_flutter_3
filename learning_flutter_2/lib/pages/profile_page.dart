import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile Page"),
      ),
      body: const Center(
        child: Text(
          "This is a profile page",
        ),
      ),
    );
  }
}
