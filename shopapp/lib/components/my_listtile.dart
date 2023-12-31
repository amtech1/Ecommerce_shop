import 'package:flutter/material.dart';

class mylisttile extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final IconData icon;
  const mylisttile(
      {super.key, required this.text, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.grey,
        ),
        title: Text(text),
        onTap: onTap,
      ),
    );
  }
}
