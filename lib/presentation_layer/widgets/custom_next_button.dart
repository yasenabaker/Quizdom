import 'package:flutter/material.dart';

class CustomNextButton extends StatelessWidget {
  final String title;
  final Color color;
  final bool isNextButton;
  final Function()? onPressed;

  const CustomNextButton({
    super.key,
    required this.title,
    required this.color,
    required this.isNextButton,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return isNextButton
        ? TextButton(
          onPressed: onPressed,
          child: Row(
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(color: color, fontSize: 20),
              ),
              SizedBox(width: 2.5),
              Icon(
                Icons.navigate_next_outlined,
                color: Colors.black38,
                size: 35,
              ),
            ],
          ),
        )
        : TextButton(
          onPressed: onPressed,
          child: Row(
            children: [
              Icon(
                Icons.navigate_before_outlined,
                color: Colors.black38,
                size: 35,
              ),
              SizedBox(width: 2.5),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(color: color, fontSize: 20),
              ),
            ],
          ),
        );
  }
}
