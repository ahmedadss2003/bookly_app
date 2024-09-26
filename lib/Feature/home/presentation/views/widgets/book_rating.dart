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
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          const Icon(FontAwesomeIcons.solidStar,color:Color(0xffFFDD4F) ,size: 20,),
          const SizedBox(width: 10,) ,
        const Text("4.8" , style: Styles.textStyle16,) ,
          const SizedBox(width: 5 ,) ,
          Text("(4161)" , style: Styles.textStyle14.copyWith(color:const Color(0xff707070)),) ,
        ],
      ),
    );
  }
}