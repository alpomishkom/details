import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Text? topleftText;
  final String hintText;
  final Widget? icon;

  const MyTextField(
      {super.key,
       this.topleftText,
      required this.hintText,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:   EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding:  EdgeInsets.all(8.0),
            child: topleftText
          ),
          TextFormField(
            decoration: InputDecoration(
              constraints:  BoxConstraints(maxHeight: 56, minHeight: 56),
              suffixIcon: icon,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black26,
              ),
              filled: true,
              fillColor: const Color(0xffE7E3E3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
