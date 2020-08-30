import 'package:artemy_beta_2/widgets/product/ImageSwipper.dart';
import 'package:artemy_beta_2/widgets/product/ProductDescription.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {

  String tag;

  Product({@required this.tag});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff262A2D),
      body: Column(
        children: [
          Expanded(
            child: ImageSwipper(tag: widget.tag,),
          ),

          ProductDescription(),
        ],
      ),
    );
  }
}
