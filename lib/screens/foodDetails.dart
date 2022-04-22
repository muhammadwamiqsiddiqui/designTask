import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  double _width=150;
  double _height = 150;
  int count=1;
  void animateImage(){
    setState(() {
      if(_width==200){
        _width = 150;
        _height = 150;
      }else{
        _width = 200;
        _height = 200;
      }
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Details",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
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
            //mainAxisSize: MainAxisSize.min,
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
                          GestureDetector(
                            onTap:(){
                              animateImage();
                            },
                            child: Center(
                              child: AnimatedContainer(
                                //color: Colors.red,
                                duration: const Duration(seconds: 1),
                                width: _width,
                                height: _height,
                                child: Image.asset(
                                  "assets/burger.png"
                                ),
                              ),
                            ),
                          ),
                          Container(
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
                                    "4.5",
                                    style: Theme.of(context).textTheme.labelSmall,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children:  [
                              Expanded(
                                child: Text(
                                  "Extra beef burger with cheese",
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
                          ),
                           const SizedBox(height: 10,),
                           Text(
                            "ingredients",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: 90,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 7,
                              itemBuilder: (context,index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 6.0, top: 6.0, bottom: 6.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width/5,
                                    //height: 800,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset("assets/burger.png",fit: BoxFit.fitWidth,height: 60,width: 50,),
                                        Text(
                                          "potato",
                                          style: Theme.of(context).textTheme.labelSmall,
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            "Description",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 6,),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                "What is Lorem IpsumLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Why do we uIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Where does it come from?Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit ame, comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorumby Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                                //"Hello",
                                style: Theme.of(context).textTheme.labelSmall,
                                //overflow: TextOverflow.fade,
                                //maxLines: ,
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
              SizedBox(
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
                            text: "9,60",
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
