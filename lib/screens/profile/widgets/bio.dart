
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bio_item.dart';
import 'social_media.dart';

class Bio extends StatefulWidget {
  const Bio({super.key});

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BioItem(
          title1: "Crew members at",
          title2: "ONET TEBOULBA",
          type: "job",
        ),
        const BioItem(
          title1: "Former Interne at",
          title2: "Fenix",
          type: "job",
        ),
        const BioItem(
          title1: "Former Interne at",
          title2: "Tunisian-IT",
          type: "job",
        ),
        const BioItem(
          title1: "Studies Diploma in",
          title2: "IT (Software Engineering) at EPI Digital School",
          type: "job",
        ),
        const BioItem(
          title1: "Studied",
          title2: "Master of Professional Studies (MPS) in UX/UI Design at ISIMS",
          type: "job",
        ),
        const BioItem(
          title1: "Studied at",
          title2: " Institut Supérieur d'Informatique et de Multimédia de Sfax",
          type: "job",
        ),

        const BioItem(
          title1: "Lives in",
          title2: "Teboulba, Al Munastir, Tunisia",
          type: "home",
        ),
        const BioItem(
          title1: "From",
          title2: "Teboulba, Al Munastir, Tunisia",
          type: "location",
        ),
        const SocialMedia(
          title: "Single",
          type: "status",
        ),
        const SocialMedia(
          title: "chiheb69",
          type: "instagram",
        ),
        const SocialMedia(
          title: "chiheb69",
          type: "github",
        ),
        const SocialMedia(
          title: "chiheb69",
          type: "twitter",
        ),
        const SocialMedia(
          title: "chiheb kammoun",
          type: "linkedin",
        ),
       
        Row(
          children: [
            const Icon(
              Icons.more_horiz,
              color: Color(0xffE4E6EA),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "See Your About Info",
              style: GoogleFonts.inter(
                color: const Color(0xffE4E6EA),
              ),
            )
          ],
        )
      ],
    );
  }
}
