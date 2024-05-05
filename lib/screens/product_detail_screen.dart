import 'package:flutter/material.dart';
import 'package:widget_compose/widgets/elements/texts/big_text.dart';


class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPage();
}

class _ProductDetailPage extends State<ProductDetailPage> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            BigText(title: 'title'),
          ],
        ),
      ),
    );
  }
}
