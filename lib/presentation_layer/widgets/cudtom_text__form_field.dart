import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final double radius;
  final IconData icon;

  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.icon,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: Colors.green),
        ),
        hintText: hint,
        hintStyle: TextStyle(fontSize: 25),
        suffixIcon:
            hint == "password"
                ? IconButton(onPressed: () {}, icon: Icon(Icons.show_chart))
                : Icon(icon, size: 30),

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
