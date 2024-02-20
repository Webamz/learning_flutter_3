import 'package:flutter/material.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Contacts Page")),
      ),
      body: ListView(
        children: thecontacts(),
      ),
    );
  }

  Widget contacts() {
    return Row(
      children: [
        Image.asset(
          'assets/images/user.png',
          width: 80,
          height: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        const Text("Christian\n0123456789"),
      ],
    );
  }

  List<Widget> thecontacts() {
    List<Widget> conts = [];
    for (var i = 0; i < 1000; i++) {
      conts.add(contacts());
    }
    return conts;
  }
}
