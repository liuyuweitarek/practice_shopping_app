import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:practice_shopping_app/app_route.dart';
import 'package:practice_shopping_app/pages/products/products_page.dart';
import 'package:practice_shopping_app/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shopping App Practice',
        theme: theme,
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: ProductsPage.route,
        home: Text("Hello Worlds!"));
  }
}
