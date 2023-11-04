import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../widgets/nav_button.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double space = size.width * 0.060;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 3;
    final double itemWidth = size.width / 2;

    List ads = [
      {
        'price': '1500 TND',
        'label': 'Iphone SE2',
        'image': 'assets/images/marketplace/img-1.jpg'
      },
      {
        'price': '17000 TND',
        'label': 'Pulsar 150 Twin',
        'image': 'assets/images/marketplace/img-2.jpg'
      },
      {
        'price': '600 TND',
        'label': 'Dell 22"Monitor',
        'image': 'assets/images/marketplace/img-3.jpg'
      },
      {
        'price': 'LKR.55,000',
        'label': 'DJI OSMO Pocket',
        'image': 'assets/images/marketplace/img-4.jpg'
      },
      {
        'price': '550 TND',
        'label': 'Apple iPad Air 4',
        'image': 'assets/images/marketplace/img-5.jpg'
      },
      {
        'price': '480 TND',
        'label': 'Iphone SE2',
        'image': 'assets/images/marketplace/img-1.jpg'
      },
      {
        'price': '750 TND',
        'label': 'Pulsar 150 Twin',
        'image': 'assets/images/marketplace/img-2.jpg'
      },
      {
        'price': '780 TND',
        'label': 'Dell 22"Monitor',
        'image': 'assets/images/marketplace/img-3.jpg'
      },
      {
        'price': '980 TND',
        'label': 'DJI OSMO Pocket',
        'image': 'assets/images/marketplace/img-4.jpg'
      },
      {
        'price': '630 TND',
        'label': 'Apple iPad Air 4',
        'image': 'assets/images/marketplace/img-5.jpg'
      },
      {
        'price': '750 TND',
        'label': 'Iphone SE2',
        'image': 'assets/images/marketplace/img-1.jpg'
      },
      {
        'price': '780 TND',
        'label': 'Pulsar 150 Twin',
        'image': 'assets/images/marketplace/img-2.jpg'
      },
      {
        'price': '980 TND',
        'label': 'Dell 22"Monitor',
        'image': 'assets/images/marketplace/img-3.jpg'
      },
      {
        'price': '460 TND',
        'label': 'DJI OSMO Pocket',
        'image': 'assets/images/marketplace/img-4.jpg'
      },
      {
        'price': '650 TND',
        'label': 'Apple iPad Air 4',
        'image': 'assets/images/marketplace/img-5.jpg'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Marketplace",
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
              Iconsax.notification,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width * 0.010,
          ),
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
              Iconsax.user,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width * 0.010,
          ),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: (size.width / 2) - space,
                      child: const NavButton(
                        label: 'Sell',
                        icon: Iconsax.edit,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    SizedBox(
                      width: (size.width / 2) - space,
                      child: const NavButton(
                        label: 'Categories',
                        icon: Iconsax.task,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.030,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's picks",
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: size.width * 0.040,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Iconsax.location,
                          color: Colors.blue,
                          size: size.width * 0.050,
                        ),
                        SizedBox(
                          width: size.width * 0.015,
                        ),
                        Text(
                          "Teboulba - 25 km",
                          style: GoogleFonts.roboto(
                            color: Colors.blue,
                            fontSize: size.width * 0.040,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.030,
                ),
                SizedBox(
                  height: size.height,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6.0,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: (itemWidth / itemHeight),
                    children: List.generate(
                      ads.length,
                      (index) => Column(
                        children: [
                          Image.asset(
                            ads[index]['image'],
                            fit: BoxFit.cover,
                            height: size.height * 0.22,
                            width: size.width,
                          ),
                          SizedBox(
                            height: size.height * 0.010,
                          ),
                          Row(
                            children: [
                              Text(
                                ads[index]['price'],
                                style: GoogleFonts.roboto(
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                width: size.width * 0.010,
                              ),
                              Expanded(
                                child: Text(
                                  ads[index]['label'],
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
