import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/bottom_navigation.dart';

class MoreScreen extends StatelessWidget {
  MoreScreen({super.key});

  var map = <Map<String, dynamic>>[
    {
      "icon": Icons.edit_attributes_outlined,
      "icon_color": "3e7fde",
      "text": "Edit Profile"
    },
    {"icon": Icons.location_off, "icon_color": "000000", "text": "My Address"},
    {"icon": Icons.shop, "icon_color": "000000", "text": "My Orders"},
    {"icon": Icons.chat, "icon_color": "72cb21", "text": "Chat with us"},
    {
      "icon": Icons.phone,
      "icon_color": "f37a20",
      "text": "Talk to our Support"
    },
    {
      "icon": Icons.mail_lock_outlined,
      "icon_color": "000000",
      "text": "Mail to us"
    },
    {
      "icon": Icons.facebook_outlined,
      "icon_color": "3e7fde",
      "text": "Message to facebook page"
    },
    {"icon": Icons.logout_outlined, "icon_color": "f37a20", "text": "Logout"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "More",
          style: GoogleFonts.poppins(
              fontSize: 20,
              color: const Color(0xff37474F),
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xffF8F9FC),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  minRadius: 25,
                  backgroundImage: AssetImage(
                    "assets/Oval.png",
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ali Khan",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: const Color(0xff3F3F3F),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "ali@gmail.com",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: const Color(0xff3F3F3F)),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40),
            for (int i = 0; i < map.length; i++)
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 30,
                ),
                child: Row(
                  children: [
                    Icon(
                      map[i]["icon"],
                      color: Color(int.parse("0xFF${map[i]["icon_color"]}")),
                    ),
                    SizedBox(width: 20),
                    Text(
                      map[i]["text"],
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xff37474F),
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
