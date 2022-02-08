import 'package:dt_app/NavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Color(0xff1B114C)),
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Color(0xffFAFAFA),
          // backgroundColor: Colors.red,
          title: Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              "Team Arduous",
              style: GoogleFonts.poppins(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.black),
            ),
          ),
        ),
      drawer: SideDrawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),

            // Welcome Text

            Center(
                child: Container(
              height: 250,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage('assets/personal-finance.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            )),

            // Buttons
            SizedBox(
              height: 110,
            ),

            // Tracker Button
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/testScreen');},
                
                
                // onPressed: () => showDialog<String>(
                //   context: context,
                //   builder: (BuildContext context) => AlertDialog(
                //     title: const Text('Thoda Sabr Kro Mitr'),
                //     content: const Text('Feature Coming Soon.'),
                //     actions: <Widget>[
                //       TextButton(
                //         onPressed: () => Navigator.pop(context, 'Cancel'),
                //         child: const Text('Cancel'),
                //       ),
                //       TextButton(
                //         onPressed: () => Navigator.pop(context, 'OK'),
                //         child: const Text('OK'),
                //       ),
                //     ],
                //   ),
                // ),

                child: Text(
                  'Tracker',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 19.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff281D60),
                    minimumSize: Size(120, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // Academy Button
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/academyScreen');
                },
                child: Text(
                  'Academy',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, fontSize: 19.0),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff281D60),
                    minimumSize: Size(120, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),

            // Team Name
            // Container(
            //   margin: EdgeInsets.only(
            //       top: MediaQuery.of(context).size.height * 0.18),
            //   child: Text(
            //     "Team Arduous",
            //     style: GoogleFonts.poppins(
            //         fontWeight: FontWeight.w500, fontSize: 18),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
