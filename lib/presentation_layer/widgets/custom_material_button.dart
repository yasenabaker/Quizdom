import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const CustomMaterialButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onPressed: onPressed,
      color: Colors.black,
      minWidth: double.infinity,
      height: 50,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          color: const Color.fromARGB(255, 174, 255, 216),
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
        ),
      ),
    );
  }
}
