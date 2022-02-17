import 'package:e_market/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SoupStew extends StatelessWidget {
  const SoupStew({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body : CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
          centerTitle: false,
          backgroundColor : Colors.green,
          title:
         const Text('E_Market'),
             actions:[
              IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ), 
             ],
             bottom: AppBar( 
               automaticallyImplyLeading: false,
               title: Container(
                 height: 40,
                 width: double.infinity,
                 color: Colors.white,
                 child: const TextField(
                   
                   decoration: InputDecoration( 
                      
                     hintText: 'Search soup/stew/sauce',
                     prefixIcon : Icon(Icons.search),
                   )
                 )
               )
             )
         ),
         
      ],
    ),
      
    );
  }
}