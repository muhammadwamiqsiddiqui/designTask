import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/models/foodItems.dart';
import 'package:fooddeliveryapp/widgets/categoriesList.dart';
import 'package:fooddeliveryapp/widgets/foodRow.dart';
import 'package:fooddeliveryapp/widgets/headings.dart';
import 'package:fooddeliveryapp/widgets/searchAndFilter.dart';

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
  selectedFoodListFunc(value){

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
              label: "",
              activeIcon: Icon(
                  Icons.home_filled
              ),
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
                Headings(text: "New York", textStyle: Theme.of(context).textTheme.titleLarge,)
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
                Headings(text: "Hi Siamak",textStyle: Theme.of(context).textTheme.titleLarge,),
                const SizedBox(height: 10,),
                Headings(text: "I brought you a list of delicious food today", textStyle: Theme.of(context).textTheme.headlineLarge,),
                const SizedBox(height: 10,),
                const SearchAndFilter(),
                const SizedBox(height: 6,),
                Headings(text: "Categories", textStyle: Theme.of(context).textTheme.labelLarge,),
                const SizedBox(height: 20,),
                CategoriesList(onChanged: (value){
                  setState(() {
                    selectedFoodList =  value;
                  });
                }),
                const SizedBox(height: 20,),
                Headings(text: "Popular Food", textStyle: Theme.of(context).textTheme.labelLarge,),
                const SizedBox(height: 20,),
                FoodRow(selectedFoodList: selectedFoodList),
              ],
            )
          ),
        ),
      ),
    );
  }
}


