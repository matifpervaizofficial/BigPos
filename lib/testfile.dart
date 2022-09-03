// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:html';

// import 'package:favorite_button/favorite_button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:velocity_x/velocity_x.dart';

// import 'package:bigposweb/custombutton.dart';
// import 'package:bigposweb/search%20sec/datamodel.dart';
// import 'package:bigposweb/themes.dart/colorscheme.dart';

// import 'search sec/searchpage.dart';

// class TestFile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: appcolors.greyText,
//         body: Container(
//           height: 1000,
//           child: GridView.builder(
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                   maxCrossAxisExtent: 610,
//                   childAspectRatio: 1,
//                   crossAxisSpacing: 20,
//                   mainAxisSpacing: 20),
//               itemCount: UserInfo.users.length,
//               itemBuilder: (context, index) {
//                 return userwidget(
//                   userdata: UserInfo.users[index],
//                 );
//               }),
//         ));
//   }
// }

// class userwidget extends StatelessWidget {
//   final UserData userdata;
//   const userwidget({
//     Key? key,
//     required this.userdata,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 13),
//       decoration: BoxDecoration(
//           color: appcolors.white, borderRadius: BorderRadius.circular(5)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 64.57,
//                     width: 64.57,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.contain,
//                         image: AssetImage(userdata.userimage),
//                       ),
//                     ),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             userdata.name,
//                             style: TextStyle(
//                                 fontSize: 16,
//                                 color: appcolors.black,
//                                 fontWeight: FontWeight.w600),
//                           ),
//                           SizedBox(
//                             width: 80,
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.verified,
//                                 size: 25,
//                                 color: appcolors.gradientGreen,
//                               ).pOnly(right: 10),
//                               Icon(
//                                 Icons.favorite,
//                                 size: 25,
//                                 color: appcolors.gradientGreen,
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                       Container(
//                         width: 200,
//                         child: Text(
//                           userdata.desc,
//                           style: TextStyle(
//                               fontSize: 12, color: appcolors.greyText),
//                         ),
//                       )
//                     ],
//                   ).pOnly(left: 10)
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 userdata.location,
//                 style: TextStyle(
//                     color: appcolors.greyText,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400),
//               ),
//               RatingBar.builder(
//                 glow: true,
//                 itemSize: 15,
//                 initialRating: 3,
//                 minRating: 1,
//                 direction: Axis.horizontal,
//                 allowHalfRating: true,
//                 itemCount: 5,
//                 itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                 itemBuilder: (context, _) => Icon(
//                   Icons.star,
//                   color: Color.fromARGB(241, 222, 113, 30),
//                 ),
//                 onRatingUpdate: (rating) {
//                   print(rating);
//                 },
//               ),
//             ],
//           ),
//           Container(
//             height: 56,
//             width: 390,
//             color: appcolors.background,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     CustomText(
//                         textitem: "Group",
//                         textColor: appcolors.gradientGreen,
//                         textSize: 16),
//                     Text(
//                       "\$${userdata.groupprice}",
//                       style: TextStyle(
//                           color: appcolors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     CustomText(
//                         textitem: "Personal",
//                         textColor: appcolors.gradientGreen,
//                         textSize: 16),
//                     Text(
//                       "\$${userdata.personprice}",
//                       style: TextStyle(
//                           color: appcolors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     CustomText(
//                         textitem: "Consulting",
//                         textColor: appcolors.gradientGreen,
//                         textSize: 16),
//                     Text(
//                       "\$${userdata.consultingprice}",
//                       style: TextStyle(
//                           color: appcolors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22),
//                     ),
//                   ],
//                 )
//               ],
//             ).p(5),
//           ).p(10),
//           Row(
//             children: [
//               customgallery(Image: "assets/images/g1.jpg"),
//               customgallery(Image: "assets/images/g2.jpg"),
//               customgallery(Image: "assets/images/g3.jpg"),
//               customgallery(Image: "assets/images/g4.jpg"),
//               Container(
//                 height: 40,
//                 width: 95,
//                 child: CustomButton(
//                     onTap: () {},
//                     borderRadius: 5,
//                     borderColor: appcolors.gradientGreen,
//                     buttonColor: appcolors.gradientGreen,
//                     textColor: appcolors.white,
//                     buttonText: "Contact Now"),
//               )
//             ],
//           )
//         ],
//       ).p(10),
//     );
//   }
// }

// class customgallery extends StatelessWidget {
//   final Image;
//   const customgallery({
//     Key? key,
//     required this.Image,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40,
//       width: 40,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.contain,
//           image: AssetImage(Image),
//         ),
//       ),
//     ).p(5);
//   }
// }
