import 'package:counter_app_provider/Views/homepage.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider/counter_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routes: {
          '/': (context) => const HomePage(),
        },
      ),
    ),
  );
}
