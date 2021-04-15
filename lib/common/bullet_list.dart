import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BulletList extends StatelessWidget {
  final List<String> items;

  const BulletList({
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final item in items) _BulletListItem(text: item),
      ],
    );
  }
}

class _BulletListItem extends StatelessWidget {
  final String text;

  const _BulletListItem({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.headline2?.copyWith(
          color: Colors.white,
          height: 1.5,
        );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('\u2022', style: textStyle),
        const SizedBox(width: 8.0),
        Expanded(
          child: Text(text, style: textStyle),
        )
      ],
    );
  }
}
