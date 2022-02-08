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

          AboutCard(imageName: 'team/vikash.jpg', name: 'Vikash Kumar', sapId: '500087856', rollNumber: 'R2142201909'),
          AboutCard(imageName: 'team/arpita.jpeg', name: 'Arpita Kumari', sapId: '500086232', rollNumber: 'R2142201596'),
          AboutCard(imageName: 'team/ishita.jpg', name: 'Ishita Nanda', sapId: '500086361', rollNumber: 'R2142201599'),
          AboutCard(imageName: 'team/akshita.jpg', name: 'Akshita Kapoor', sapId: '500088130', rollNumber: 'R2142201952'),
          AboutCard(imageName: 'team/vedant.jpg', name: 'Vedant Arora', sapId: '500084901', rollNumber: 'R2142201585'),
          AboutCard(imageName: 'team/satyam.jpg', name: 'Satyam Gupta', sapId: '500087711', rollNumber: 'R2142201897'),
          AboutCard(imageName: 'team/alpana.jpeg', name: 'Alpana Dass', sapId: '500087523', rollNumber: 'R2142201861'),
          AboutCard(imageName: 'team/ashhar.jpg', name: 'Ashhar Ali', sapId: '500085020', rollNumber: 'R2142201436'),


        ],
      ),
    );
  }
}

