import 'package:flutter/material.dart';
import 'package:widget_compose/widgets/elements/texts/priceText.dart';
import 'package:widget_compose/widgets/elements/texts/small_text.dart';
import 'package:widget_compose/widgets/elements/texts/text_title.dart';

import '../entitys/product.dart';

class ProductDetailPageScreen extends StatefulWidget {
  final ProductToDisplay product;

  const ProductDetailPageScreen({super.key, required this.product});

  @override
  State<ProductDetailPageScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Center(child: Image.network(widget.product.imageUrl)),
          ),
          SizedBox(
            height: 90,
            child: TextTitle(
              title: widget.product.name,
              color: Colors.blue,
            ),
          ),
          SmallText(
            title: widget.product.description ?? '',
            color: Colors.blue,
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PriceText(
                  price: '\$' + widget.product.price.toString(),
                  color: Colors.red,
                ),
                SmallText(title: 'rating ' + widget.product.rating.toString()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
