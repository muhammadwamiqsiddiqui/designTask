import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/models/categories.dart';

import '../models/foodItems.dart';

class CategoriesList extends StatefulWidget {
  ValueChanged onChanged;
  CategoriesList({Key? key,required this.onChanged}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int tappedIndex=0;
  List<FoodItems> selectedFoodList=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFoodList = burgers;
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: catList.length,
        itemBuilder: (context,index) {
          return Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width/3.2,
              child: ListTile(
                selectedTileColor: secondaryColor,
                selected: tappedIndex == index?true:false ,
                onTap: (){
                  setState(() {
                    tappedIndex = index;
                    switch(catList[index].catName){
                      case "Burgers":
                        selectedFoodList = burgers;
                        break;
                      case "Pizza":
                        selectedFoodList = pizzas;
                        break;
                      case "Biryani":
                        selectedFoodList = biryani;
                    }
                    widget.onChanged(selectedFoodList);
                  });
                },
                tileColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                        color: tappedIndex == index?Colors.transparent:Colors.blue
                    )
                ),
                leading: Image.asset(catList[index].catUrl,fit: BoxFit.fitWidth,height: 50,width: 30,),
                minLeadingWidth: 2,
                horizontalTitleGap: 2,
                dense: true,
                title: Text(
                  catList[index].catName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: tappedIndex == index?Colors.white:Colors.black
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
