import 'package:flutter/material.dart';
import 'package:not_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 28)),
          Spacer(),
          CustomSearchIcon(onPressed: onPressed, icon: icon),
        ],
      ),
    );
  }
}
