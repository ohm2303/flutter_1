import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../entitys/product.dart';
import '../cards/product_card.dart';

typedef OnSelectProduct = Function(ProductToDisplay product);

class ProductList extends StatelessWidget {
  final List<ProductToDisplay> products;
  final OnSelectProduct? onSelectProduct;

  const ProductList({super.key, required this.products, this.onSelectProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 16,
          );
        },
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: products[index],
            onTap: (onSelectProduct),
          );
        },
      ),
    );
  }
}
