import 'package:dt_app/modals/aboutCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {

  // AboutUs({this.name,this.sapId,this.rollNumber,this.imageName};)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Center(child: Text("Team Arduous",style: GoogleFonts.roboto(color: Colors.black,fontSize: 30),),),
          SizedBox(height: 40,),

          AboutCard(imageName: 'pumpkin.jpg', name: 'Pumpkin', sapId: '678985150', rollNumber: 'IA5648616'),


        ],
      ),
    );
  }
}

