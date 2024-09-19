import 'package:bookly_app/Feature/home/presentation/views/home_view.dart';
import 'package:bookly_app/Feature/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kHomeView = "/homeView" ;
 static final router = GoRouter(
  
  routes: [
    GoRoute(
      path: '/', //Tell The App This is the starting Point Of App
      builder: (context, state) =>const SplashView(),
    ),
     GoRoute(
      path: kHomeView,
      builder: (context, state) =>const HomeView(),
    ),
  ],
);
}