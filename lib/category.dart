import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/bottom_navigation.dart';
import 'package:grocery_app/json_data/categories.dart';
import 'package:grocery_app/product_detail.dart';
import 'package:grocery_app/style.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int pageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF8F9FC),
      appBar: AppBar(
        backgroundColor: Color(0xffF8F9FC),
        elevation: 0,
        title: Text(
          "Category",
          style: GoogleFonts.poppins(
              fontSize: 20,
              color: Color(0xff37474F),
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: categoriesList.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(),
              ),
            ),
            child: Card(
              elevation: 2,
              shadowColor: Colors.white,
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("${categoriesList[index]['cat_image']}",
                        height: 100),
                    Text(
                      "${categoriesList[index]['cat_name']}",
                      style: GoogleFonts.poppins(textStyle: topcat),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
