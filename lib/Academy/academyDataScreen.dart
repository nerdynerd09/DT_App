import 'package:dt_app/modals/academyScreenContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class AcademyDataScreen extends StatelessWidget {
  final String pageName;
  final String content;
  final String image;

  AcademyDataScreen(this.pageName, this.content,this.image);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AcademyContentPage(pageName: pageName, content: content, image: image),
    );
  }
}

