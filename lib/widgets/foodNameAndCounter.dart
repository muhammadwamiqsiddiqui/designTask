import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/models/foodItems.dart';

class FoodNameAndCounter extends StatefulWidget {
  final FoodItems foodItems;
  const FoodNameAndCounter({Key? key,required this.foodItems}) : super(key: key);

  @override
  State<FoodNameAndCounter> createState() => _FoodNameAndCounterState();
}

class _FoodNameAndCounterState extends State<FoodNameAndCounter> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Expanded(
          child: Text(
            widget.foodItems.foodName,
            style: Theme.of(context).textTheme.headlineLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: tertiaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: (){
                  setState(() {
                    if(count!=1){
                      count--;
                    }
                  });
                },
                icon: const Icon(
                  FontAwesomeIcons.minus,
                  size: 18,
                ),
              ),
              Text(
                count.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                onPressed: (){
                  setState(() {
                    count++;
                  });
                },
                icon: const Icon(
                  FontAwesomeIcons.plus,
                  size: 18,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
