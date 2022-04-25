import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/ingredients.dart';

class IngredientsRow extends StatelessWidget {
  const IngredientsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: ingredients.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 6.0, bottom: 6.0),
            child: Container(
              width: MediaQuery.of(context).size.width/5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Image.asset(ingredients[index].url,fit: BoxFit.fitWidth,height: 60,width: 50,),
                  Text(
                    ingredients[index].name,
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}