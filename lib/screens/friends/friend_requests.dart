import 'package:FacebookCloneAppChiheb/screens/friends/widgets/friend_request_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/nav_button.dart';

class FriendRequests extends StatelessWidget {
  const FriendRequests({super.key});

  static const List requests = [
    {
      'name' : 'Amir Trigui',
      'image': 'assets/images/requests/r-1.jpg'
    },
     {
      'name' : 'Bilel Elloumi',
      'image': 'assets/images/requests/r-2.jpg'
    },
     {
      'name' : 'Chadi Kammoun',
      'image': 'assets/images/requests/r-3.jpg'
    },
     {
      'name' : 'Chahine Kammoun',
      'image': 'assets/images/requests/r-4.jpg'
    },
     {
      'name' : 'Ghazi Maaref',
      'image': 'assets/images/requests/r-5.jpg'
    },
     {
      'name' : 'Hani Berriche',
      'image': 'assets/images/requests/r-6.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Friends",
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: size.width * 0.070,
          ),
        ),
        actions: [
          Container(
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff2F3031),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: const Icon(
              Iconsax.search_normal,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width * 0.010,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.050,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.010,
                ),
                Row(
                  children: [
                    const NavButton(
                      label: 'Suggestions',
                    ),
                    SizedBox(
                      width: size.width * 0.015,
                    ),
                    const NavButton(
                      label: 'Your Friends',
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey[600],
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Friend requests",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: size.width * 0.045,
                      ),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.roboto(
                        color: Colors.blue[600],
                        fontSize: size.width * 0.045,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                Column(
                  children: List.generate(
                    requests.length,
                    (index) => FriendRequestItem(
                      name: requests[index]['name'],
                      image: requests[index]['image'],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
