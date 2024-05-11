import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_compose/entitys/product.dart';
import 'package:widget_compose/mocks/products.dart';
import 'package:widget_compose/screens/home_screen.dart';
import 'package:widget_compose/screens/product_detail_screen.dart';

import '../screens/user_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  errorPageBuilder: (context, state) {
    return MaterialPage(child: Scaffold(body: Center(child: Text('Page not found'))));
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: 'detail',
          builder: (context, state) {
            final product = state.extra as ProductToDisplay?;
            if (product != null) {
              return ProductDetailPageScreen(product: product);
            } else {
              // สามารถใส่การแสดงผลหน้าโฮมหรือหน้าที่จะแสดงในกรณีที่ไม่มีข้อมูลสินค้าที่ส่งมาได้
              return const HomePage();
            }
          },
        ),
        GoRoute(
          path: 'user',
          builder: (context, state) {
            return const UserPageScreen();
          },
        ),
      ],
    ),
  ],
);
