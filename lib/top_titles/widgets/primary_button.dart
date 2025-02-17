
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  // const PrimaryButton({super.key});
  final String buttonText;
  PrimaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color:Colors.redAccent),
      // child: Text(buttonText, style: TextButton.copyWiht(color:whitespaceTextConfiguration),),
    );
  }
}
