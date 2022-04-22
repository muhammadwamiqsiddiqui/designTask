import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/models/categories.dart';
import 'package:fooddeliveryapp/models/foodItems.dart';
import 'package:fooddeliveryapp/screens/foodDetails.dart';

class FoodsList extends StatefulWidget {
  const FoodsList({Key? key}) : super(key: key);

  @override
  State<FoodsList> createState() => _FoodsListState();
}

class _FoodsListState extends State<FoodsList> {

  int _selectedIndex=0;
  int tappedIndex=0;
  List<FoodItems> selectedFoodList=[];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFoodList=burgers;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index){
            _onItemTapped(index);
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: secondaryColor,
          selectedItemColor: filterColor,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: secondaryColor,
              activeIcon: Icon(
                  Icons.home_filled
              ),
              label: "",
              icon: Icon(
                Icons.home_outlined
              ),
            ),
            BottomNavigationBarItem(
                backgroundColor: secondaryColor,
              label: "",
              activeIcon: Icon(
                  Icons.bookmark
              ),
              icon: Icon(
                Icons.bookmark_outline_outlined
              )
            ),
            BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                label: "",
                activeIcon: Icon(
                    Icons.shopping_bag
                ),
                icon: Icon(
                    Icons.shopping_bag_outlined
                )
            ),
            BottomNavigationBarItem(
                backgroundColor: secondaryColor,
                label: "",
                activeIcon: Icon(
                    Icons.person
                ),
                icon: Icon(
                    Icons.person_outline
                )
            )
          ],
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Theme.of(context).iconTheme.color,
                ),
                Text(
                  "New York",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
          leading: Icon(
            Icons.doorbell_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          centerTitle: true,
          actions:  const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/wamiqpotrait2git.jpg",
                ),
              )
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Siamak",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10,),
                Text(
                  "I brought you a list of delicious food today",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.search,
                          ),
                          hintText: "What would you like to find?",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              style: BorderStyle.solid
                            )
                          )
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: filterColor
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: IconButton(
                          onPressed: (){
                          },
                          icon: const Icon(
                              Icons.filter_list_outlined,
                            color: Colors.white,
                          ),
                          color: secondaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 6,),
                Text(
                  "Categories",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 20,),
                SizedBox(
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
                          //height: 80,
                          //color: Colors.red,
                          //height: 800,
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
                                }
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
                ),
                const SizedBox(height: 20,),
                Text(
                  "Popular Food",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 20,),
                SizedBox(
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
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const FoodDetails()));
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
                                      Text(
                                        selectedFoodList[index].foodName,
                                        style: Theme.of(context).textTheme.labelMedium,
                                      ),
                                      const SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 12,
                                          ),
                                          Text(
                                            "${selectedFoodList[index].rating} | ${selectedFoodList[index].distance}",
                                            style: Theme.of(context).textTheme.labelSmall,
                                          )
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
                                          Text(
                                            selectedFoodList[index].price,
                                            style: Theme.of(context).textTheme.labelLarge,
                                          )
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
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
