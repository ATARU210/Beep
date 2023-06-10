import 'package:beep_aplication/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyAppBar extends StatelessWidget {

  const MyAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    print("${FirebaseAuth.instance.currentUser?.displayName} re render");
    return Container(
      padding: const EdgeInsets.all(10),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: TextColor.extraColor,
                weight: 100,
              )),
          Text(title,
              style: const TextStyle(color: TextColor.extraColor, fontSize: 20)),
          Container(
            padding: const EdgeInsets.all(15),
            child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut();
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(500),
                  child: Image.network(
                      FirebaseAuth.instance.currentUser?.photoURL ?? "",
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}