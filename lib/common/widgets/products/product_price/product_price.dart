import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final String currencySign, price;
  final bool isLarge;
  final int maxLines;
  final bool lineThrough;

  const PriceText({
    super.key,
    this.currencySign = "\$",
    this.price = "0",
    this.isLarge = false,
    this.lineThrough = false,
    this.maxLines = 1
  });

  @override
  Widget build(BuildContext context) {
    return Text(currencySign + price,
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        style: isLarge ? Theme.of(context).textTheme.headlineMedium!.apply(
            decoration: lineThrough ? TextDecoration.lineThrough : null
        ) :
        Theme.of(context).textTheme.titleLarge!.apply(
            decoration: lineThrough ? TextDecoration.lineThrough : null
        )
    );
  }
}