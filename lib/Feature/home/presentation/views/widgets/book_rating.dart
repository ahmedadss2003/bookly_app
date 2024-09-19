import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(right: 30),
      child:  Row(
        children: [
          Icon(FontAwesomeIcons.solidStar,color:Color(0xffFFDD4F) ,size: 20,),
          SizedBox(width: 6.3,) ,
          Text("4.8" , style: Styles.textStyle16,) ,
          SizedBox(width: 5 ,) ,
          Text("(411)" , style: Styles.textStyle14,) ,
        ],
      ),
    );
  }
}