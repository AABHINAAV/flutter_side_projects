import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildCartAmoutButtons(
          icon: Icons.remove,
          press: () {
            setState(() {
              if (numOfItems > 1) {
                numOfItems--;
              }
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPaddin,
          ),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildCartAmoutButtons(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildCartAmoutButtons({IconData icon, Function press}) {
    return SizedBox(
      height: 40,
      width: 32,
      child: OutlineButton(
        child: Icon(
          icon,
        ),
        onPressed: press,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
