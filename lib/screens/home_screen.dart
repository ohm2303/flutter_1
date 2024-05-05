import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_compose/di/get_it.dart';
import 'package:widget_compose/mocks/products.dart';
import 'package:widget_compose/port/product.dart';
import 'package:widget_compose/widgets/compounds/sections/catalog.dart';

import '../entitys/product.dart';
import '../widgets/compounds/jumbotron/home_jumbotron.dart';
import '../widgets/compounds/loading/loading_indicator.dart';
import '../widgets/compounds/navbar/home_navbar.dart';

typedef onSelectProduct = Function(ProductToDisplay product);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IProductService service = getIt.get<IProductService>();
  bool isLoading = false;

  List<List<ProductToDisplay>> products = [];
  List<String> categories = [];

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  void getProducts() async {
    setState(() {
      isLoading = true;
    });

    final categories = await service.getCategories();
    final productsFetchers = categories.map((e) => service.getByCategory(e));
    final products = await Future.wait(productsFetchers);

    setState(() {
      this.categories = categories;
      this.products = products;
    });
  }

  void onSelectProduct(ProductToDisplay product) {
    context.go("/detail");
    print(product.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HomeNavbar(),
            Expanded(
                child: !isLoading
                    ? const Loading()
                    : ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              HomeJumbotron(
                                  imageUrl: categoryImages[categories[index]]!,
                                  title: categories[index].toUpperCase(),
                                  buttonTitle: 'View Collection'),
                              Catalog(
                                title: 'All products',
                                products: products[index],
                                onSelectProduct: onSelectProduct,
                              ),
                              const SizedBox(
                                height: 24,
                              )
                            ],
                          );
                        },
                      ))
          ],
        ),
      ),
    );
  }
}
