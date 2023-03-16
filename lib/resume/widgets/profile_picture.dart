import 'package:flutter/material.dart';

import '../theme/colors.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: orangeAppColor,
            spreadRadius: 5,
          )
        ],
      ),
      child: const CircleAvatar(
        radius: 50.0,
        child: ClipOval(
            child: ColorFiltered(
          colorFilter: ColorFilter.mode(Colors.blueGrey, BlendMode.color),
          child: Image(
            image: AssetImage('assets/images/DevinFlorentino.jfif'),
          ),
        )),
      ),
    );
  }
}

Widget buildProfilePicture(EdgeInsets padding) => Padding(
      padding: padding,
      child: const AspectRatio(
        aspectRatio: 16 / 9,
        child: ProfilePicture(),
      ),
    );
