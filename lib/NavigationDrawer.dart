import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff1B114C)),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/logo.png'),
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Team Arduous",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        
        SizedBox(height: 30,),
          
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/trackerScreen');
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1B114C),
                ),
                child: ListTile(
                  // tileColor: Color(0xff1B114C),
                  leading: Icon(Icons.track_changes,color: Colors.white,),
                  title: Text(
                    "Expense Tracker",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/academyScreen');
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1B114C),
                ),
                child: ListTile(
                  // tileColor: Color(0xff1B114C),
                  leading: Icon(Icons.menu_book_rounded,color: Colors.white,),
                  title: Text(
                    "Academy",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                ),
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/aboutUs');
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1B114C),
                ),
                child: ListTile(
                  // tileColor: Color(0xff1B114C),
                  leading: Icon(Icons.account_box,color: Colors.white,),
                  title: Text(
                    "About Us",
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
         ],
      ),
    );
  }
}
