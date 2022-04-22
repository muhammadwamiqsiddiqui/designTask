

class FoodItems{
  String foodName;
  String foodUrl;
  String rating;
  String distance;
  String price;

  FoodItems({required this.foodName,required this.foodUrl,required this.rating,required this.distance, required this.price});
}

List<FoodItems> burgers = [
  FoodItems(
    foodName: "Zinger Burger",
    foodUrl: "assets/burger.png",
    price: "9,60",
    rating: "5.0",
    distance: "3km"
  ),
  FoodItems(
      foodName: "Double Patty",
      foodUrl: "assets/doublepatty.png",
      price: "11,80",
      rating: "3.5.0",
      distance: "8km"
  ),
  FoodItems(
      foodName: "Chicken Burger",
      foodUrl: "assets/chickenburger.png",
      price: "4,35",
      rating: "4.5",
      distance: "1km"
  ),
];
List<FoodItems> pizzas = [
  FoodItems(
      foodName: "Arabian Ranch",
      foodUrl: "assets/arabianranch.png",
      price: "5,60",
      rating: "3.5",
      distance: "4km"
  ),
  FoodItems(
      foodName: "Chicago Bull",
      foodUrl: "assets/chicagoBull.png",
      price: "3,80",
      rating: "4.0",
      distance: "12km"
  ),
  FoodItems(
      foodName: "Chicken Fajita",
      foodUrl: "assets/chickenfajita.png",
      price: "7,60",
      rating: "3.0",
      distance: "9km"
  ),
];