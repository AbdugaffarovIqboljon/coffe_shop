import 'package:coffee_shop_app_with_bloc/blocs/cart/bloc/cart_bloc.dart';
import 'package:coffee_shop_app_with_bloc/blocs/coffee/bloc/coffee_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/intro_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CoffeeBloc(),
        ),
        BlocProvider(create: (context) => CartBloc())
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        home: const IntroPage(),
        // home: HomePage(),
      ),
    );
  }
}
