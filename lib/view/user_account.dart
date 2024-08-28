import 'package:flutter/material.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              
            ),
          )
        ],
      ),
    );
  }
}