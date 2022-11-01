import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_market/Categories/ColdStore/fish.dart';
import 'package:e_market/Categories/ColdStore/meat.dart';
import 'package:e_market/Categories/ColdStore/poultry.dart';
import 'package:e_market/Categories/ColdStore/seafood.dart';
import 'package:e_market/Categories/Help_Me_Cook/fries.dart';
import 'package:e_market/Categories/Help_Me_Cook/others.dart';
import 'package:e_market/Categories/Help_Me_Cook/rice.dart';
import 'package:e_market/Categories/Help_Me_Cook/soup_stew.dart';
import 'package:e_market/Categories/Plantfoods/carbohydrates.dart';
import 'package:e_market/Categories/Plantfoods/fruits.dart';
import 'package:e_market/Categories/Plantfoods/grains.dart';
import 'package:e_market/Categories/Plantfoods/legumes.dart';
import 'package:e_market/Categories/Plantfoods/vegetables.dart';
import 'package:e_market/Screens/Home/Components/All_Categories/all_categories_screen.dart';
//import 'package:e_market/Screens/Home/Components/All_Categories/all_categories_screen.dart';
import 'package:e_market/Screens/Home/Components/body.dart';
import 'package:flutter/material.dart';
import 'package:e_market/constants.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

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
                      
                     hintText: 'Search',
                     prefixIcon : Icon(Icons.search),
                   )
                 )
               )
             )
         ),
         SliverList(
           delegate: 
           SliverChildListDelegate([
             CarouselSlider(
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
      
    ),
   SizedBox(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: const AllCategories()) 
           ])
           )
      ],
    ),

   drawer: Drawer (
         child : ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
           const DrawerHeader(
               decoration: BoxDecoration(
                 color: Colors.green
               ),
               child:Center(
                 child:Text('CATEGORIES', style:TextStyle(fontWeight:FontWeight.bold, fontSize:15, color:Colors.white))
               )
             ),
             ExpansionTile(
               title : const Text('Plant Foods'),
               children :<Widget>[
                 ListTile(
                   title: const Text('Fruits'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Fruits()),);
                   }
                 ),
                  ListTile(
                   title: const Text('Vegetables'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Vegetables()),);}
                 ),
                  ListTile(
                   title: const Text('Grains and Cereals'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Grains()),);}
                 ),
                  ListTile(
                   title: const Text('Carbohydrates'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Carbohydrates()),);}
                 ),
                  ListTile(
                   title: const Text('Legumes'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Legumes()),);}
                 ),
               ]
             ),
             ExpansionTile(
               title: const Text('Cold Store'),
               children : <Widget> [
                 ListTile(
                   title: const Text('Fish'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Fish()),);}
                 ),
                 ListTile(
                   title: const Text('Poultry meat'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Poultry()),);}
                 ),
                 ListTile(
                   title: const Text('Pork,beef,mutton,chevon'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Meat()),);}
                 ),
                  ListTile(
                   title: const Text('Sea food'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const SeaFood()),);}
                 ),    
               ]   
             ),
          ExpansionTile(
            title: const Text('What do you want to cook'),
            children : <Widget>[
              ListTile(
                   title: const Text('Stew/Sauce/Soup'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const SoupStew()),);}
                 ),
              ListTile(
                   title: const Text('Jollof rice/Fried rice'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Rice()),);}
                 ),
                ListTile(
                   title: const Text('Fries'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Fries()),);}
               ), 
                 ListTile(
                   title: const Text('other'),
                   onTap: (){ Navigator.push(context, MaterialPageRoute(builder:(context)=> const Others()),);}
                 ),
            ]
          )
         ]
        )

      )
    );
  }
}
