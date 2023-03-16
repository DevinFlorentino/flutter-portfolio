import 'package:flutter/material.dart';
import 'package:portfolio_app/app.dart';
import 'package:portfolio_app/ecommerce/simple_ecommerce.dart';
import 'package:portfolio_app/florie_bot/chat_screen.dart';
import 'package:portfolio_app/resume/constants/content.dart';
import 'package:portfolio_app/resume/theme/text.dart';
import 'package:portfolio_app/resume/widgets/profile_picture.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const UserAccountsDrawerHeader(
          // <-- SEE HERE
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: Color.fromARGB(255, 69, 90, 100),
          ),
          accountName: Text(
            profileName,
            style: genosHeaderStyle,
          ),
          accountEmail: Text(
            email,
            style: genosSubHeaderStyle,
          ),
          currentAccountPicture: ProfilePicture(),
        ),
        buildMenuItem(
            context,
            const Icon(
              Icons.person,
            ),
            'Resume',
            () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const MyApp(),
                  ),
                )),
        buildMenuItem(
            context,
            const Icon(
              Icons.store,
            ),
            'Ecommerce',
            () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => const SimpleEcommerce(),
                  ),
                )),
        // buildMenuItem(
        //     context,
        //     const Icon(
        //       Icons.android,
        //     ),
        //     'FlorieBot',
        //     () => Navigator.of(context).pushReplacement(
        //           MaterialPageRoute(
        //             builder: (BuildContext context) => const ChatScreen(),
        //           ),
        //         )),
      ],
    ));
  }
}

Widget buildMenuItem(
        BuildContext context, Icon icon, String text, Function()? ontap) =>
    ListTile(leading: icon, title: Text(text), onTap: ontap);
