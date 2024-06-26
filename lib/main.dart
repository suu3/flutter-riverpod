import 'package:flutter/material.dart';
import 'package:flutter_riverpod_example/screens/list.dart';
import 'package:flutter_riverpod_example/screens/login.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

GoRouter router() {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const MyLogin(),
      ),
      GoRoute(
        path: '/list',
        builder: (context, state) => const MyList(),
        //  routes: const [
        // GoRoute(
        //   path: 'to-do',
        //   builder: (context, state) => const MyCart(),
        // ),
        // GoRoute(
        //   path: 'done',
        //   builder: (context, state) => const MyCart(),
        // ),
        // ],
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter RiverPod Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 113, 73)),
        useMaterial3: true,
      ),
      routerConfig: router(),
    );
  }
}
