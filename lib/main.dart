// ignore_for_file: library_private_types_in_public_api

import 'package:dashboard_caxaj/dashboard.dart';
import 'package:dashboard_caxaj/page/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'dashboard',
          builder: (BuildContext context, GoRouterState state) {
            return const DashboardPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  static const String title = 'Navigation Drawer';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        routerConfig: _router,
        // initialRoute: '/',
        // onGenerateRoute: RouteGenerator.generateRoute,
      );
}

// class DashboardPage extends StatefulWidget {
//   const DashboardPage({super.key});

//   @override
//   _DashboardPageState createState() => _DashboardPageState();
// }

// class _DashboardPageState extends State<DashboardPage> {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         drawer: NavigationDrawerWidget(),
//         //endDrawer: NavigationDrawerWidget(),
//         appBar: AppBar(
//           title: const Text(MyApp.title),
//         ),
//         body: const Text(''),
//       );
// }
