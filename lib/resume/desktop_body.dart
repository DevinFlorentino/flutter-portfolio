import 'package:flutter/material.dart';
import 'package:portfolio_app/resume/constants/content.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 187, 156, 240),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(profileNameDesktop,
            style: TextStyle(fontFamily: "RampartOne"),
            maxLines: 2,
            softWrap: true),
      ),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                          aspectRatio: 9 / 2,
                          child: Container(
                            color: const Color.fromARGB(255, 79, 53, 150),
                          )),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: ((context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color:
                                      const Color.fromARGB(230, 154, 124, 237),
                                  height: 100,
                                ),
                              ))))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: const Color.fromARGB(230, 154, 124, 237),
            ),
          )
        ],
      ),
    );
  }
}
