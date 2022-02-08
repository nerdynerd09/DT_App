import 'package:dt_app/Academy/academyDataScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademyCard extends StatelessWidget {
  final String cardName;
  final String content;
  final String image;
  AcademyCard(this.cardName, this.content, this.image);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AcademyDataScreen('$cardName','$content','$image')));
      },
      child: Stack(
        children: [
          Positioned(
              child: Container(
            // color: Colors.blue,
            width: MediaQuery.of(context).size.width * .42,
            height: MediaQuery.of(context).size.height * .25,
            child: Card(
              color: Color(0xffC4C4C4),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/$image'),
                      fit: BoxFit.cover),
                  // color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0)),
                ),
              ),
            ),
          )),
          Positioned(
              bottom: -18,
              child: Container(
                // margin: EdgeInsets.only(left: 5),
                // color: Colors.white,
                width: MediaQuery.of(context).size.width * .42,
                height: MediaQuery.of(context).size.height * .14,
                child: Card(
                  color: Color(0xffFFFFFF),
                  child: Center(
                      child: Text(
                    '$cardName',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  )),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ))
        ],
      ),
    );
  }
}
