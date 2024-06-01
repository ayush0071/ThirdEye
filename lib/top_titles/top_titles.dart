import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title, subtitle;
  const TopTitles({super.key, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: kToolbarHeight + 12,
        ),
        if (title == "Login" || title == "Create Acount")
          //   GestureDetector(
          //       onTap: () {
          //         Navigator.of(context).pop();
          //       },
          //       child: const Icon(Icons.arrow_back_rounded)),
          // const SizedBox(
          //   height: 12.0,
          // ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        const SizedBox(
          height: 12,
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
