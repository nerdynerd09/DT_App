import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutCard extends StatelessWidget {

  final String imageName;
  final String name;
  final String sapId;
  final String rollNumber;
  const AboutCard({
    Key? key,
    required this.imageName,
    required this.name,
    required this.sapId,
    required this.rollNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        decoration: BoxDecoration(
            color: Color(0xff1B114C), borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/$imageName'),
          ),
          title: Text(
            "$name",
            style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "$sapId",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
              Text(
                "$rollNumber",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ],
          ),
        ));
  }
}
