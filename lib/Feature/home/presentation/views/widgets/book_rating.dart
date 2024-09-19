import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.only(right: 24),
      child:  Row(
        children: [
          const Icon(FontAwesomeIcons.solidStar,color:Color(0xffFFDD4F) ,size: 20,),
          const SizedBox(width: 6.3,) ,
          const Text("4.8" , style: Styles.textStyle18,) ,
          const SizedBox(width: 5 ,) ,
          Text("(411)" , style: Styles.textStyle18.copyWith(color:const Color(0xff707070)),) ,
        ],
      ),
    );
  }
}