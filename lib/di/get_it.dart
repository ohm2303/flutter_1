import 'package:widget_compose/network/http/dio_service.dart';
import 'package:widget_compose/network/http/http_service.dart';
import 'package:widget_compose/port/product.dart';
import '../repository/product_repository.dart';
import '../service/product_service.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

void registerServices() {
  getIt.registerSingleton<HttpService>(DioService('https://fakestoreapi.com'));
  getIt.registerSingleton<IProductRepository>(ProductRepository());
  getIt.registerSingleton<IProductService>(ProductService());

}