import 'package:flutter/material.dart';

class FoodImage extends StatefulWidget {
  final String foodUrl;
  const FoodImage({Key? key,required this.foodUrl}) : super(key: key);

  @override
  State<FoodImage> createState() => _FoodImageState();
}

class _FoodImageState extends State<FoodImage> {
  double _width=150;
  double _height = 150;
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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        animateImage();
      },
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: _width,
          height: _height,
          child: Image.asset(
              widget.foodUrl
          ),
        ),
      ),
    );
  }
}
