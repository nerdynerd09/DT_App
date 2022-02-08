import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcademyContentPage extends StatelessWidget {
  
  final String pageName;
  final String content;
  final String image;
  const AcademyContentPage({
    Key? key,
    required this.pageName,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // color: Colors.yellow,
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .56,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/$image'),
                      fit: BoxFit.cover,
                    ))),
              ),


              // Content Body
              Positioned(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(120)),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(top: 300),
                        // height: MediaQuery.of(context).size.height * 5,
                        width: MediaQuery.of(context).size.width,
                        child: Container(
                          // height: MediaQuery.of(context).size.height,
                          margin: EdgeInsets.only(top: 25),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  // color: Colors.green,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  margin: EdgeInsets.only(right: 80, top: 20),
                                  child: Text(
                                    "$pageName",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 34.7,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 35),
                                    // color: Colors.red,
                                    width: MediaQuery.of(context).size.width * 0.85,
                                    child: Text(
                                      "$content",
                                      style: GoogleFonts.poppins(
                                          color: Colors.black),
                                    ))
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              )),

              //Back Button
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff281D60),
                    ),
                    margin: EdgeInsets.all(8),
                    height: 35,
                    width: 35,
                    // color: Color(0xff281D60),

                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
