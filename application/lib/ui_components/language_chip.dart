import 'package:application/models/language.model.dart';
import 'package:flutter/material.dart';

class LanguageChip extends StatelessWidget {
  const LanguageChip({
    Key? key,
    required this.language,
  }) : super(key: key);

  final Language language;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: language.color,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          language.name,
        ),
      ],
    );
  }
}
