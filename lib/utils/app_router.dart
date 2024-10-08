import 'package:beauty_app/models/product_model.dart';
import 'package:beauty_app/views/home_view.dart';
import 'package:beauty_app/views/product_view.dart';
import 'package:beauty_app/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/home_view';
  static const kProductView = '/product_view';
  

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kProductView,
        builder: (context, state) =>  ProductView(
          productModel: state.extra as ProductModel,
        ),
      ),
    ],
  );
}
