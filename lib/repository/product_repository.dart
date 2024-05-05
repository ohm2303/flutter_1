import '../models/productApi.dart';
import '../network/http/http_service.dart';
import '../port/product.dart';

class ProductRepository implements IProductRepository {
  final HttpService httpService;

  ProductRepository(this.httpService);

  @override
  Future<List<ProductApi>> getByCategory(String category) async {
    final response = await httpService.get('/products/category/$category');
    List<ProductApi> products = [];
    for (dynamic res in response) {
      products.add(ProductApi.fromJson(res));
    }
    return products;
  }

  @override
  Future<List<String>> getCategories() async{
    final response = await httpService.get('/products/categories');
    List<String> category = [];
    for(dynamic res in response){
      category.add(res);
    }
    return category;
  }
}
