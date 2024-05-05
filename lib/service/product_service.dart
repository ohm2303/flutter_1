import 'package:widget_compose/port/product.dart';

import '../entitys/product.dart';

class ProductService extends IProductService {
  final IProductRepository repository;
  ProductService(this.repository);

  @override
  Future<List<ProductToDisplay>> getByCategory(String category) async {
    final rawProducts = await repository.getByCategory(category);
    return rawProducts.map((product) => ProductToDisplay(id: product.id.toString(), category: product.category!, name: product.title!, imageUrl: product.image!, price: product.price!.toDouble())).toList();
  }

  @override
  Future<List<String>> getCategories() async{
    return await repository.getCategories();
  }

}