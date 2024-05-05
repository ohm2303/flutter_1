

import '../entitys/product.dart';
import '../models/productApi.dart';
import '../network/http/http_service.dart';
import '../port/product.dart';

final List<ProductToDisplay> products = [
  ProductToDisplay(
      id: '5b501b3d-5caa-4403-98b6-c5035b0fff17',
      name: 'Nike 1',
      imageUrl:
          'https://images.unsplash.com/photo-1509983165097-0c31a863e3f3?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 300,
      category: 'xxx'),
  ProductToDisplay(
      id: '5b501b3d-5caa-4403-98b6-c5035b0fff17',
      name: 'Nike 2',
      imageUrl:
          'https://images.unsplash.com/photo-1556906781-9a412961c28c?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 1200,
      category: 'xxx'),
  ProductToDisplay(
      id: '5b501b3d-5caa-4403-98b6-c5035b0fff17',
      name: 'Nike 3',
      imageUrl:
          'https://images.unsplash.com/photo-1579298245158-33e8f568f7d3?q=80&w=2990&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      price: 300,
      category: 'xxx'),
];

final Map<String,String> categoryImages = {
"electronics":"https://images.unsplash.com/photo-1703591923722-9ff005df71cb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDV8RS0tX3BuSWlyRzR8fGVufDB8fHx8fA%3D%3D",
"jewelery":"https://images.unsplash.com/photo-1581067126294-93267874f136?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8RS0tX3BuSWlyRzR8fGVufDB8fHx8fA%3D%3D",
"men's clothing":"https://images.unsplash.com/photo-1564055475189-a0ebf0d3b22a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8RS0tX3BuSWlyRzR8fGVufDB8fHx8fA%3D%3D",
"women's clothing":"https://images.unsplash.com/photo-1713122446901-40884feae0b2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8Q0R3dXdYSkFiRXd8fGVufDB8fHx8fA%3D%3D"
};
