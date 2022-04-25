import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:fooddeliveryapp/models/foodItems.dart';
import 'package:fooddeliveryapp/widgets/foodImage.dart';
import 'package:fooddeliveryapp/widgets/foodNameAndCounter.dart';
import 'package:fooddeliveryapp/widgets/headings.dart';
import 'package:fooddeliveryapp/widgets/ingredientsRow.dart';
import 'package:fooddeliveryapp/widgets/priceAndCart.dart';
import 'package:fooddeliveryapp/widgets/ratings.dart';

class FoodDetails extends StatefulWidget {
  final FoodItems foodItems;
  const FoodDetails({Key? key,required this.foodItems}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Headings(
            text: "Details", textStyle: Theme.of(context).textTheme.titleLarge,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined),
            color: Theme.of(context).iconTheme.color,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.bookmark_outline_outlined,
                color:Theme.of(context).iconTheme.color,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0,bottom: 10.0),
          child: Column(
            children: [
              Flexible(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FoodImage(foodUrl: widget.foodItems.foodUrl),
                          Ratings(widget: widget),
                          const SizedBox(height: 10,),
                          FoodNameAndCounter(foodItems: widget.foodItems),
                           const SizedBox(height: 10,),
                           Headings(text: "ingredients", textStyle: Theme.of(context).textTheme.labelLarge,),
                          const SizedBox(height: 10,),
                          const IngredientsRow(),
                          const SizedBox(height: 10,),
                          Headings(text: "Description", textStyle: Theme.of(context).textTheme.labelLarge,),
                          const SizedBox(height: 6,),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                "What is Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we uIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Where does it come from?Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit ame, comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorumby Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50),
                        ),
                          gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(0.2),
                                primaryColor
                              ],
                              begin: Alignment.topCenter,
                              end: const Alignment(0.0,0.9)
                          )
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 10,
                    ),
                  ],
                ),
              ),
              PriceAndCart(widget: widget)
            ],
          ),
        ),
      ),
    );
  }
}