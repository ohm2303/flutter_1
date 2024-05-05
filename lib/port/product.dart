import 'package:widget_compose/models/productApi.dart';

import '../entitys/product.dart';

abstract class IProductRepository{
  Future<List<ProductApi>> getByCategory(String category);
  Future<List<String>> getCategories();
}

abstract class IProductService {
  Future<List<ProductToDisplay>> getByCategory(String category);
  Future<List<String>> getCategories();
}
