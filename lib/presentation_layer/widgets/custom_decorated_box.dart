import 'package:flutter/material.dart';
import 'package:quiz_app/domain_layer/entities/questions_data.dart';

class CustomDecoratedBox extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  const CustomDecoratedBox({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 50,
        width: 170,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color:
                Questionsdata.topic == title
                    ? const Color(0xFFDFF5DD)
                    : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(5, 5),
              ),
            ],
            border: Border.all(
              color:
                  Questionsdata.topic == title ? Colors.green : Colors.black38,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
