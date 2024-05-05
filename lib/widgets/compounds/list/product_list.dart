import 'package:flutter/cupertino.dart';
import '../../../entitys/product.dart';
import '../cards/product_card.dart';

class ProductList extends StatelessWidget {
  final List<ProductToDisplay> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 16,);
        },
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context,index){
          return ProductCard(product: products[index],);
        },
      ),
    );
  }
}
