import 'package:flutter/material.dart';

class HeadingSection extends StatelessWidget {
  final String text, buttonText;
  final Color? textColor;
  final bool showActionButton;
  final VoidCallback? onPressed;
  const HeadingSection({
    super.key,
    required this.text,
    this.buttonText = "View All",
    this.showActionButton = true,
    this.onPressed,
    this.textColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
          style: Theme.of(context).textTheme.headlineSmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton) TextButton(onPressed: (){},
          child: Text(buttonText),
        )
      ],
    );
  }
}