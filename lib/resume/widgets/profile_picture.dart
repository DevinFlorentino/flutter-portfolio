import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50.0,
      child: ClipOval(
          child: Image(
        image: AssetImage('assets/images/DevinFlorentino.jfif'),
      )),
    );
  }
}
