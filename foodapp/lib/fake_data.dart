import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';

import 'models/category.dart';

const FAKE_CATEGORIES = [
  Category(id: 1, content: "Tea", color: Colors.green),
  Category(id: 2, content: "Milk", color: Colors.red),
  Category(id: 3, content: "Rice", color: Colors.blue),
  Category(id: 4, content: "Pizza", color: Colors.orange),
  Category(id: 5, content: "Pasta", color: Colors.pink),
  Category(id: 6, content: "Bread", color: Colors.grey),
  Category(id: 7, content: "Sandwich", color: Colors.yellow),
  Category(id: 8, content: "Pozza", color: Colors.black),
  Category(id: 9, content: "Coffee", color: Colors.brown),
  Category(id: 10, content: "Pho", color: Colors.green),
  Category(id: 11, content: "Tea", color: Colors.green),
  Category(id: 12, content: "Milk", color: Colors.red),
  Category(id: 13, content: "Rice", color: Colors.blue),
  Category(id: 14, content: "Pizza", color: Colors.orange),
  Category(id: 15, content: "Pasta", color: Colors.pink),
  Category(id: 16, content: "Bread", color: Colors.grey),
  Category(id: 17, content: "Sandwich", color: Colors.yellow),
  Category(id: 18, content: "Pozza", color: Colors.black),
  Category(id: 19, content: "Coffee", color: Colors.brown),
  Category(id: 10, content: "Pho", color: Colors.green),
];

var FAKE_FOOD = [
  Food(
      name: "Thai Nguyen tea",
      urlName:
          "https://lh3.googleusercontent.com/proxy/dOXtmktp7RzJ_Rle6OhwyoPsV0ycHIyYeRKERVNmPrPXXVT_nqRDYLhOek3c_oKDClxrb7PbzN04vUX7B6kRi4VTz30NIkdSit9GsK6IyBJQ1Vofvv1lmcTldE-EvPioFLFYIigGy29e4WGbhL58z7NZiux0qvJ8",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      ingredients: ['Salt', 'Water', 'Sugar'],
      categoryId: 1),
  Food(
      name: "Sandwich Vietnam",
      urlName:
          "https://assets.bonappetit.com/photos/5f84743360f032defe1f5376/16:9/w_2560%2Cc_limit/Pullman-Loaf-Lede-new.jpg",
      duration: Duration(minutes: 5),
      complexity: Complexity.Medium,
      ingredients: ['Bread', 'Eag', 'Sugar'],
      categoryId: 2),
  Food(
      name: "Vianmilk",
      urlName:
          "https://product.hstatic.net/1000074072/product/sua-bich-vinamilk-it-duong-b_10a05f4064944b3baee472681df982a1.jpg",
      duration: Duration(minutes: 3),
      complexity: Complexity.Simple,
      ingredients: ['Water', 'Sugar', 'Milk'],
      categoryId: 2),
  Food(
      name: "Chicken Pizza",
      urlName:
          "https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Chicken-Pizza_exps30800_FM143298B03_11_8bC_RMS.jpg",
      duration: Duration(minutes: 25),
      complexity: Complexity.Hard,
      ingredients: ['Chicken meat', 'Water', 'Salt'],
      categoryId: 1),
  Food(
      name: "Cow pizza",
      urlName:
          "https://previews.123rf.com/images/visible3dscience/visible3dscience1603/visible3dscience160302047/53168964-3d-rendered-illustration-of-cow-cartoon-character-with-pizza.jpg",
      duration: Duration(minutes: 30),
      complexity: Complexity.Simple,
      ingredients: ['Cow meat', 'Water', 'Salt'],
      categoryId: 3),
];
