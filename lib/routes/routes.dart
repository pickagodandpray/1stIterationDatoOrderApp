import 'package:go_router/go_router.dart';

import 'package:hieuappe/home.dart';

import 'package:hieuappe/suggestProduct.dart';

class orderappRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Home(), routes: [
        GoRoute(
            path: 'suggPro',
            builder: (context, state) => const suggestProducts())
      ]),
    ],
  );
}
