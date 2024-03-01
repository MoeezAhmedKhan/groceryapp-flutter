import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/json_data/categories.dart';
import 'package:grocery_app/mybag.dart';
import 'package:grocery_app/style.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Snacks",
          style: GoogleFonts.poppins(
              fontSize: 20,
              color: const Color(0xff37474F),
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xffF8F9FC),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              for (int i = 0; i <= 4; i++)
                Row(
                  children: [
                    Container(
                      height: 270,
                      width: 164,
                      decoration: const BoxDecoration(
                        color: Color(0xffF8F9FC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 164,
                                height: 130,
                                padding: EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color(0xfff3f4f4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset("assets/cat1-pro2.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                child: Text(
                                  "Radhuni Shemai - 200 gm",
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "৳60",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16, color: Color(0xffF37A20)),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 164,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff87dd39),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 20),
                                      const Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MyBag(),
                                            ),
                                          ),
                                          child: Text(
                                            "Add to Bag",
                                            // textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 270,
                      width: 164,
                      decoration: const BoxDecoration(
                        color: Color(0xffF8F9FC),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 164,
                                height: 130,
                                padding: EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color(0xfff3f4f4),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Image.asset("assets/cat1-pro1.png"),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 3),
                                child: Text(
                                  "Radhuni Shemai - 200 gm",
                                  style: GoogleFonts.poppins(fontSize: 14),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "৳60",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16, color: Color(0xffF37A20)),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 164,
                                  height: 35,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff87dd39),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 20),
                                      const Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => MyBag(),
                                            ),
                                          ),
                                          child: Text(
                                            "Add to Bag",
                                            // textAlign: TextAlign.center,
                                            style: GoogleFonts.poppins(
                                                fontSize: 12,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}
