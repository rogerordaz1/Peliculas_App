import 'package:flutter/cupertino.dart';
import 'package:movies/features/movies/presentation/pages/home/home_page.dart';
import 'package:movies/features/movies/presentation/pages/movie/movie_page.dart';

class RoutesApp {
  static Map<String, WidgetBuilder> get router {
    return {
      HomePage.routeName: (_) => const HomePage(),
      MoviePage.routeName: (_) => const MoviePage(),
    };
  }

  static String get initialRoute => HomePage.routeName;
}
