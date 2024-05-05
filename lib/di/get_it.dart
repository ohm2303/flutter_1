import 'package:widget_compose/network/http/dio_service.dart';
import 'package:widget_compose/network/http/http_service.dart';
import 'package:widget_compose/repository/product_repository.dart';

final getIt = GetIt.instance;

void registerService() {
  getIt.registerSignleton<HttpService>(DioService('https://fakestoreapi.com'));
  getIt.registerSignleton(ProductRepository());
}
