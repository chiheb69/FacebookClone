import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../home/widgets/post.dart';

class PublishPost extends StatefulWidget {
  const PublishPost({super.key});

  @override
  State<PublishPost> createState() => _PublishPostState();
}

class _PublishPostState extends State<PublishPost> {
  List posts = [
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-1.jpg'
    },
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': 'a day ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-2.jpg'
    },
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': '9 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-3.jpg'
    },
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-4.jpg',
      'verify': true,
    },
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': '15 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-5.jpg',
    },
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': '21 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-6.jpg',
    },
    {
      'name': 'Chiheb Kammoun',
      'image': 'assets/images/user.jpg',
      'time': '3 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-7.jpg',
      'verify': true,
    }
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.010,
        ),
        Container(
          width: size.width,
          height: 1.5,
          decoration: const BoxDecoration(
            color: Color(0xff65676A),
          ),
        ),
        SizedBox(
          height: size.height * 0.020,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Posts",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Filters",
              style: GoogleFonts.inter(
                color: const Color(0xff6393DA),
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xff242525),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/user.jpg",
                  width: 450,
                  height: 450,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "What's on your mind?",
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: size.width,
          height: size.height * 0.040,
          decoration: const BoxDecoration(
            color: Color(0xff333436),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.020,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('assets/icons/video-icon.png'),
                  SizedBox(
                    width: size.width * 0.015,
                  ),
                  Text(
                    "Live Video",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/photo-icon.png'),
                  SizedBox(
                    width: size.width * 0.015,
                  ),
                  Text(
                    "Photo/Video",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/icons/life-event.png'),
                  SizedBox(
                    width: size.width * 0.015,
                  ),
                  Text(
                    "Life Event",
                    style: GoogleFonts.inter(
                      color: Color(0xffE4E6EA),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.020,
        ),
        SizedBox(
          width: size.width,
          height: size.height * 0.045,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff3a3b3d),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Manage Posts",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: size.width * 0.035,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.030,
        ),
        Column(
          children: List.generate(
            posts.length,
            (index) => Post(
              name: posts[index]['name'],
              image: posts[index]['image'],
              time: posts[index]['time'],
              isPublic: posts[index]['isPublic'],
              type: posts[index]['type'],
              post: posts[index]['post'],
              postImage: posts[index]['postImage'],
              verify: posts[index]['verify'] ?? false,
            ),
          ),
        )
      ],
    );
  }
}
