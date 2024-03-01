import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/category.dart';
import 'package:grocery_app/home_screen.dart';
import 'package:grocery_app/more.dart';
import 'package:grocery_app/mybag.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List<dynamic> bottomListIcon = [
    Icons.home_outlined,
    Icons.widgets,
    Icons.shopping_bag_outlined,
    Icons.menu,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .12,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int index = 0; index < 4; index++)
            InkWell(
              onTap: () => setState(() {
                currentIndex = index;
                if (currentIndex == 0) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                } else if (currentIndex == 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryScreen(),
                    ),
                  );
                } else if (currentIndex == 2) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyBag(),
                    ),
                  );
                } else if (currentIndex == 3) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoreScreen(),
                    ),
                  );
                }
              }),
              child: Icon(
                bottomListIcon[index],
                color: Color(0xff5ec401),
                size: 25,
              ),
            ),
        ],
      ),
    );
  }
}
