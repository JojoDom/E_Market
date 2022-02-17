import 'package:e_market/Screens/Home/Components/All_Categories/all_categories_screen.dart';
import 'package:e_market/Screens/Home/Components/carousel_slider.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Column(
         mainAxisAlignment : MainAxisAlignment.center,
        children: const <Widget>[
           CarouselSliderPage(),
           AllCategories()

                ]
      );
      
    
  }
}
