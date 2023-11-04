import 'package:FacebookCloneAppChiheb/screens/home/widgets/post.dart';
import 'package:FacebookCloneAppChiheb/screens/home/widgets/story.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const List stories = [
    {
      'name': 'Salem',
      'image': 'assets/images/stories/1.jpg',
      'avatar': 'assets/images/stories/avatar-1.png'
    },
    {
      'name': 'Amine',
      'image': 'assets/images/stories/2.jpg',
      'avatar': 'assets/images/stories/avatar-2.png'
    },
    {
      'name': 'Ahmed',
      'image': 'assets/images/stories/3.jpg',
      'avatar': 'assets/images/stories/avatar-3.png'
    },
    {
      'name': 'Imen',
      'image': 'assets/images/stories/4.jpg',
      'avatar': 'assets/images/stories/avatar-4.png'
    }
  ];

  static const List posts = [
    {
      'name': 'Marvel',
      'image': 'assets/images/posts/avatar-1.png',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-1.jpg'
    },
    {
      'name': 'MCU',
      'image': 'assets/images/posts/avatar-2.png',
      'time': 'a day ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-2.jpg'
    },
    {
      'name': 'Marvel Cimenamtic',
      'image': 'assets/images/posts/avatar-3.png',
      'time': '9 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-3.jpg'
    },
    {
      'name': 'MCU FANS',
      'image': 'assets/images/posts/avatar-4.png',
      'time': '2 days ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-4.jpg',
      'verify': true,
    },
    {
      'name': 'Loki',
      'image': 'assets/images/posts/avatar-5.png',
      'time': '15 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-5.jpg',
    },
    {
      'name': 'Iron Man',
      'image': 'assets/images/posts/avatar-6.png',
      'time': '21 hours ago',
      'isPublic': true,
      'type': 'mixd',
      'post': '',
      'postImage': 'assets/images/posts/post-6.jpg',
    },
    {
      'name': 'MCU 2023',
      'image': 'assets/images/posts/avatar-7.png',
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          'assets/images/logo-1.png',
          width: size.width * 0.35,
          color: Colors.white,
        ),
        actions: [
          Container(
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff3a3b3b),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: const Icon(
              Iconsax.search_normal,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: size.width * 0.020,
          ),
          Container(
            width: 45,
            height: 45,
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Color(0xff3a3b3b),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Image.asset(
              'assets/icons/messenger.png',
              color: Colors.white,
              width: size.width * 0.065,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.050,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50)),
                              child: CircleAvatar(
                                child: Image.asset(
                                  'assets/images/user.jpg',
                                  fit: BoxFit.cover,
                                  width: size.width,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * 0.020,
                            ),
                            Text(
                              "What's on your mind ?",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: size.width * 0.040,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/icons/photo.png',
                          fit: BoxFit.contain,
                          width: size.width * 0.060,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              const Divider(
                thickness: 6,
                color: Colors.black87,
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.030,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const NewStory(),
                      Row(
                        children: List.generate(
                          stories.length,
                          (index) => Story(
                            image: stories[index]['image'],
                            name: stories[index]['name'],
                            avatar: stories[index]['avatar'],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.010,
              ),
              const Divider(
                thickness: 6,
                color: Colors.black87,
              ),
              SizedBox(
                height: size.height * 0.010,
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
          ),
        ),
      ),
    );
  }
}
