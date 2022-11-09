import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_specialties/screens/cart_screen.dart';
import 'package:medical_specialties/screens/review_screen.dart';
import 'package:medical_specialties/screens/track_order.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context , child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
        foregroundColor: Colors.black,
         backgroundColor: Colors.white,
          centerTitle: true,
        ),
        primarySwatch: Colors.blue,
      ),
          home: child,
        ),
            child: BottomNavBar(),
      designSize: Size(375, 812),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  final bottompages = [
    const cart_screen(),
    const review(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: bottompages[pageIndex],

      bottomNavigationBar: SalomonBottomBar(
        currentIndex: pageIndex,
        onTap: (i) => setState(() => pageIndex = i),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Icon(Icons.home, color: Colors.black,),
            title: Text("Home", style: TextStyle(color: Colors.black),),
            selectedColor: Colors.amber.shade700,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Icon(Icons.shopping_bag,color: Colors.black ),
            title: Text("Doctor", style: TextStyle(color: Colors.black),),
            selectedColor: Colors.amber.shade700,
          ),

        ],
      ),

    );
  }

}

