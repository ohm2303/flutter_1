// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:widget_compose/mocks/mock_http_service.dart';
import 'package:widget_compose/repository/product_repository.dart';
import 'package:widget_compose/service/product_service.dart';

void main() {
  test('Get product by electronics category of product return products', () async {
    final mockHttpService = MockHttpService('mock');
    mockHttpService.returnData = [ {
      "id": 5,
      "title": "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
      "price": 695,
      "description": "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
      "category": "jewelery",
      "image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
      "rating": {
        "rate": 4.6,
        "count": 400
      }
    }];
    final productRepository = ProductRepository(mockHttpService);
    final productService = ProductService(productRepository);
    final products = await productService.getByCategory('car');

    expect(products, isNotEmpty);
    expect(products[0].category, 'jewelery');
  });

  test('Get all category',()async{
  final mockHttpService = MockHttpService('mock');
  mockHttpService.returnData = [
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing"
  ];

  final productRepository = ProductRepository(mockHttpService);
  final productService = ProductService(productRepository);
  final category = await productService.getCategories();

  expect(category, isNotEmpty);
  expect(category[0], 'electronics');
  });
}
