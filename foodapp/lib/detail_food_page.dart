import 'package:flutter/material.dart';

import 'models/food.dart';

class DetailFoodPage extends StatelessWidget {
  Food food;

  DetailFoodPage({required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detail food')),
        body: Column(
          children: [
            Center(
                child: FadeInImage.assetNetwork(
                    placeholder: 'assets/images/loading.gif',
                    image: food.urlName)),
            Container(
              padding:EdgeInsets.symmetric(vertical: 10) ,
              child: Text('Ingredients:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: this.food.ingredients.length,
                    itemBuilder: (context, index) {
                      String ingredient = this.food.ingredients[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('#${index + 1}')
                        ),
                        title: Text(
                          ingredient,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      );
                    }))
          ],
        ));
  }
}
