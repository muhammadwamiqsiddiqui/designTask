import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/models/foodItems.dart';
import 'package:fooddeliveryapp/screens/foodDetails.dart';
import 'package:fooddeliveryapp/widgets/headings.dart';

class FoodRow extends StatelessWidget {
  const FoodRow({
    Key? key,
    required this.selectedFoodList,
  }) : super(key: key);

  final List<FoodItems> selectedFoodList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: selectedFoodList.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: GestureDetector(
              onTap: (){
                log("Index= "+index.toString());
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>FoodDetails(foodItems: selectedFoodList[index],)));
              },
              child: Stack(
                alignment: const Alignment(0.0,1.0),
                children: [
                  SizedBox(
                    height: 230,
                    child: Container(
                        width: MediaQuery.of(context).size.width/2.9,
                        height: 200,
                        margin: const EdgeInsets.only(
                          bottom: 25,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        //height: 80,
                        //color: Colors.red,
                        //height: 800,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              selectedFoodList[index].foodUrl,
                              width: 90,
                              fit: BoxFit.fitWidth,
                            ),
                            const SizedBox(height: 5,),
                            Headings(text: selectedFoodList[index].foodName,
                              textStyle: Theme.of(context).textTheme.labelMedium,),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 12,
                                ),
                                Headings(text: "${selectedFoodList[index].rating} | ${selectedFoodList[index].distance}", textStyle: Theme.of(context).textTheme.labelSmall,)
                              ],
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("\$",style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 10
                                ),),
                                Headings(text: selectedFoodList[index].price, textStyle: Theme.of(context).textTheme.labelLarge,)
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: "heroTag"+index.toString(),
                    onPressed: () {  },
                    child: const Icon(
                        Icons.add
                    ),
                    mini: true,
                    backgroundColor: secondaryColor,
                    elevation: 0,
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