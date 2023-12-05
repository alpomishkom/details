import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTailPages extends StatelessWidget {
  final Image image;
  final Text text;
  final Widget trailing;
  const ListTailPages({super.key, required this.image, required this.text, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Color(0xFFF4FDFA),
        child: image,
      ),
      title: text,
      trailing: trailing,

    );
  }
}
