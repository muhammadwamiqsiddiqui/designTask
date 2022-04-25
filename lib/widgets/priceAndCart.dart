import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/screens/foodDetails.dart';

class PriceAndCart extends StatelessWidget {
  const PriceAndCart({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final FoodDetails widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
                children: [
                  const TextSpan(
                      text: "\$",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12
                      )
                  ),
                  TextSpan(
                      text: widget.foodItems.price,
                      style: Theme.of(context).textTheme.headlineLarge
                  )
                ]
            ),
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                  primary: secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              ),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                    "Add to cart"
                ),
              )
          )
        ],
      ),
    );
  }
}