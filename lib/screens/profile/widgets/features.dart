import 'package:flutter/material.dart';

import 'feature_item.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureItem(
            title: "New",
            add: true,
          ),
          FeatureItem(
            title: "Me",
            image:
                "assets/images/highlights/highlight-1.jpg",
            add: false,
          ),
          FeatureItem(
            title: "Club",
            image:
                "assets/images/highlights/highlight-2.jpg",
            add: false,
          ),
          FeatureItem(
            title: "Me",
            image:
                "assets/images/highlights/highlight-3.jpg",
            add: false,
          ),
        ],
      ),
    );
  }
}
