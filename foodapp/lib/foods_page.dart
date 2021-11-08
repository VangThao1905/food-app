import 'package:flutter/material.dart';
import 'package:foodapp/detail_food_page.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  late Category? category;

  FoodsPage({this.category});

  @override
  Widget build(BuildContext context) {
    Map<String, Category> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>;
    category = arguments['category'];

    List<Food> foods = FAKE_FOOD
        .where((food) => food.categoryId == this.category!.id)
        .toList();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Foods from category"),
        ),
        body: Center(
            child: Center(
                child: foods.length > 0
                    ? ListView.builder(
                        itemCount: foods.length,
                        itemBuilder: (context, index) {
                          Food food = foods[index];
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      DetailFoodPage(food: food)));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    clipBehavior: Clip.hardEdge,
                                    child: Center(
                                      child: FadeInImage.assetNetwork(
                                          placeholder:
                                              'assets/images/loading.gif',
                                          image: food.urlName),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 30,
                                    left: 30,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 1)),
                                      child: Row(
                                        children: [
                                          Icon(Icons.timer,
                                              color: Colors.white, size: 25),
                                          Text(
                                              '${food.duration.inMinutes} minutes',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    top: 30,
                                    right: 30,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 1)),
                                      child: Row(
                                        children: [
                                          Text(
                                              '${food.complexity.toShortString()}',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white))
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    bottom: 30,
                                    right: 30,
                                    child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Colors.black45,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 1)),
                                      child: Row(
                                        children: [
                                          Text('${food.name}',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          );
                        })
                    : Text('No food found',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)))));
  }
}
