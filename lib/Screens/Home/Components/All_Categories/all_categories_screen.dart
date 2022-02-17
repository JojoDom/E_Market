import 'package:e_market/Screens/Details/details_screen.dart';
import 'package:e_market/Screens/Home/Components/All_Categories/Components/item_card.dart';
import 'package:e_market/Screens/Home/Components/All_Categories/Components/products.dart';
import 'package:flutter/material.dart';
import 'package:e_market/constants.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      crossAxisAlignment : CrossAxisAlignment.start,
      children :< Widget>[
        const Padding(
           padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding),
           child : Text('All Products')
        ), 
        Expanded(
          child : Padding (
            padding : const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              shrinkWrap:true,
               padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,

            ),
            itemBuilder : (context, index) => ItemCard(
                      product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            ),
                          )),
                    )

          ),
         ) )
      ]

      
    );
  }
}