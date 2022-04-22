

class Categories{
  String catName;
  String catUrl;
  Categories({required this.catName,required this.catUrl});
}
List<Categories> catList = [
  Categories(catName: "Burgers",catUrl: "assets/burger.png"),
  Categories(catName: "Pizza",catUrl: "assets/pizza.png"),
  Categories(catName: "Desi",catUrl: "assets/biryani.png"),
  Categories(catName: "Deserts",catUrl: "assets/deserts.png"),
];