import 'package:e_market/Screens/Home/Components/All_Categories/Components/products.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({ Key? key, required this.product }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('E_Market')
      ),
      body: const Center(
        child: Text('Details')
      )
      
    );
  }
}