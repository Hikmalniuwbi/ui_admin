import 'package:flutter/material.dart';

class CostumBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CostumBtn({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // Warna latar belakang
        textStyle: TextStyle(fontSize: 16), // Gaya teks
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Radius sudut
        ),
      ),
    );
  }
}
