import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderPage extends StatelessWidget {
  const CarouselSliderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options :CarouselOptions(
         height: 120.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 900),
                viewportFraction: 0.8
      ),

      items: [
        // first image
        Container(
        margin: const EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : const DecorationImage (
           image: ExactAssetImage('assets/images/accessories.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
      // second image
      Container(
        margin: const EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : const DecorationImage (
           image: ExactAssetImage('assets/images/men fashion.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
          // third image
            Container(
        margin: const EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : const DecorationImage (
           image: ExactAssetImage('assets/images/skin care.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
         // fourth image
           Container(
        margin: const EdgeInsets.all(6.0),
        decoration : BoxDecoration(
         borderRadius: BorderRadius.circular(8.0),
         image : const DecorationImage (
           image: ExactAssetImage('assets/images/women fashion.png'),
           fit: BoxFit.cover,
         ),
        ),
      ),
     
      ]
      
    );
  }
}