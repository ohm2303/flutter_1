import 'package:flutter/material.dart';
import 'package:widget_compose/widgets/elements/texts/small_text.dart';

import '../../../entitys/product.dart';
import '../../elements/texts/priceText.dart';

class ProductCard extends StatelessWidget {
  final ProductToDisplay product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 240,
      child: Stack(children: [
        Image.network(product.imageUrl,width: 200, fit: BoxFit.cover,height: 240,),
        Column(
          children: [
            const Spacer(),
            Container(
              color: const Color(0x88000000),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallText(title: product.name, color: Colors.white,),
                    PriceText(price: '${product.price}\$'),
                  ],
                ),
              ),
            )
          ],
        )
      ],),
    );
  }

}