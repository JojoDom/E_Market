import 'package:flutter/material.dart';

class Product{
  final String image, title, description;
  final int id;
  final Color color;

  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.id,
    required this.color
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Carrots",
      description: 'Vegetable',
      image: "assets/images/carrots.png",
      color: Colors.orange
      ),
      Product(
      id: 2,
      title: "Cabbage",
      description: 'Vegetable',
      image: "assets/images/cabbage.png",
      color: Colors.lightGreen
      ),
      Product(
      id: 3,
      title: "Cucumbers",
      description: 'Vegetable',
      image: "assets/images/cucumbers.png",
      color: Colors.green
      ),
      Product(
      id: 4,
      title: "Grean Beans",
      description: 'Vegetable',
      image: "assets/images/greenbeans.png",
      color: Colors.green
      ),
      Product(
      id: 5,
      title: "Bell Pepper",
      description: 'Vegetable',
      image: "assets/images/greenpepper.png",
      color: Colors.green
      ),
      
      Product(
      id: 6,
      title: "lettuce",
      description: 'Vegetable',
      image: "assets/images/lettuce.png",
      color: Colors.green
      ),
      
      Product(
      id: 7,
      title: "Kpakposhito Hot pepper",
      description: 'Chillie',
      image: "assets/images/hot-pepper-kpakposhito.png",
      color: Colors.lightGreen
      ),
      Product(
      id: 8,
      title: "Oranges",
      description: 'Fruit',
      image: "assets/images/orranges.png",
      color: Colors.orange
      ),

      Product(
      id: 9,
      title: "Onion",
      description: 'Vegetable',
      image: "assets/images/redonion-png.png",
      color: Colors.redAccent
      ),

      Product(
      id: 10,
      title: "Tomatoes",
      description: 'Vegetable',
      image: "assets/images/tomato.png",
      color: Colors.red
      ),


      ];