import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/mybag.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Details",
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 308,
                    width: 294,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Image.asset("assets/product.png"),
                  ),
                ],
              ),
              Row(children: [
                Container(
                  height: 66,
                  width: 66,
                  child: Image.asset("assets/pro-1.png"),
                ),
                SizedBox(width: 10),
                Container(
                  height: 66,
                  width: 66,
                  child: Image.asset("assets/pro-2.png"),
                )
              ]),
              const SizedBox(height: 10),
              Text(
                "Arla DANO Full Cream Milk Powder Instant",
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1KG",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xff3E3E3E),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "৳182",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: const Color(0xff87dd39),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/icon1.png"),
                  SizedBox(width: 10),
                  Text(
                    "Dairy Products",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: const Color(0xff3E3E3E),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.menu),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Et quidem faciunt, ut summum bonum sit extremum et rationibus conquisitis de voluptate. Sed ut summum bonum sit id,",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color(0xff3E3E3E),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "You can also check this items",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: const Color(0xff3E3E3E),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 121,
                        width: 115,
                        child: Image.asset("assets/product.png"),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nestle Nido Full Cream Milk Powder Instant",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color(0xff37474F),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "৳342",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                textStyle: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                                color: const Color(0xff37474F),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "৳270",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffF37A20),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        height: 121,
                        width: 115,
                        child: Image.asset("assets/pro-3.png"),
                      ),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nestle Nido Full Cream Milk Powder Instant",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: const Color(0xff37474F),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "৳372",
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                textStyle: const TextStyle(
                                    decoration: TextDecoration.lineThrough),
                                color: const Color(0xff37474F),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "৳250",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xffF37A20),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 48,
                decoration: const BoxDecoration(
                  color: Color(0xff87dd39),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
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
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
