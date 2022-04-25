import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/foodDetails.dart';

class Ratings extends StatelessWidget {
  const Ratings({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final FoodDetails widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tertiaryColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 6.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children:  [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 10,
            ),
            const SizedBox(width: 5,),
            Text(
              widget.foodItems.rating,
              style: Theme.of(context).textTheme.labelSmall,
            )
          ],
        ),
      ),
    );
  }
}