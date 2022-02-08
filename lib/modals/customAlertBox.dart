// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:dt_app/modals/userImage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';

// class customAlertBox extends StatefulWidget {
//   @override
//   _customAlertBoxState createState() => _customAlertBoxState();
// }

// class _customAlertBoxState extends State<customAlertBox> {
//   File? image;

//   Future getImage(ImageSource source) async {
//     final image = await ImagePicker().pickImage(source: source);
//     if (image == null) return;
//     final temporaryImage = File(image.path);

//     setState(() {
//       this.image = temporaryImage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//       child: Stack(
//         clipBehavior: Clip.none,
//         alignment: Alignment.topCenter,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Container(
//               height: 200,
//               color: Color(0xff271C60),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Change image from",
//                     style: GoogleFonts.poppins(
//                       color: Colors.white,
//                       fontSize: 24,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   image != null
//                       ? ElevatedButton(
//                           onPressed: () => print("Upload"),
//                           child: Text(
//                             "Uplaod",
//                             style: GoogleFonts.poppins(
//                               color: Color(0xff271C60),
//                             ),
//                           ),
//                           style:
//                               ElevatedButton.styleFrom(primary: Colors.white),
//                         )
//                       : Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             ElevatedButton(
//                                 // onPressed: () => {print("Gallery")},
//                                 onPressed: () => getImage(ImageSource.gallery),
//                                 child: Text(
//                                   "Gallery",
//                                   style: GoogleFonts.poppins(
//                                       color: Color(0xff271C60)),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                     primary: Colors.white)),
//                             ElevatedButton(
//                                 // onPressed: () => {print("Gallery")},
//                                 onPressed: () => {getImage(ImageSource.camera)},
//                                 child: Text(
//                                   "Camera",
//                                   style: GoogleFonts.poppins(
//                                       color: Color(0xff271C60)),
//                                 ),
//                                 style: ElevatedButton.styleFrom(
//                                     primary: Colors.white)),
//                           ],
//                         ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             child: CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.white,
//               child: image != null
//                   ? Image.file(image!)
//                   : CircleAvatar(
//                       radius: 48,
//                       backgroundImage: AssetImage('assets/pumpkin.jpg'),
//                     ),
//               // backgroundImage: AssetImage('assets/pumpkin.jpg'),
//             ),
//             top: -50,
//           ),
//         ],
//       ),
//     );
//   }
// }
