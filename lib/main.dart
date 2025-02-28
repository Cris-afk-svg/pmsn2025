import 'package:flutter/material.dart';
import 'package:pmsn2025/screens/dashboard_screen.dart';
import 'package:pmsn2025/screens/list_students_screen.dart';
import 'package:pmsn2025/screens/splash_screen.dart';
import 'package:pmsn2025/screens/todo_screen.dart';
import 'package:pmsn2025/utils/global_values.dart';
import 'package:practica_figma/screens/check_out.dart';
import 'package:practica_figma/screens/home_screen.dart';
import 'package:practica_figma/screens/productDetail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: GlobalValues.themeApp,
        builder: (context, value, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: value,
              routes: {
                '/list': (context) => const ListStudentsScreen(),
                '/dashboard': (context) => const DashboardScreen(),
                '/todo': (context) => const TodoScreen(),
                '/homeScreen': (context) => const HomeScreen(),
                '/productDetail': (context) => const ProductDetailPage(),
                '/checkOut': (context) => const CheckoutPage(),
              },
              title: 'Material App',
              home: const SplashScreen());
        });
  }
}
