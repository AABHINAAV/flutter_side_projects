import 'package:flutter/material.dart';

import 'cart_counter.dart';
import 'like_heart.dart';

class CartCounterAndHeart extends StatelessWidget {
  const CartCounterAndHeart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        LikeHeart(),
      ],
    );
  }
}