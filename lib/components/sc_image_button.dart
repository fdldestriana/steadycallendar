import 'package:flutter/material.dart';

class SCImageButton extends StatelessWidget {
  const SCImageButton(this.assetName, this.text, {super.key});
  final String assetName;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
          child: Image.asset(
            assetName,
            height: 40,
          ),
        ),
        Text(text)
      ],
    );
  }
}
