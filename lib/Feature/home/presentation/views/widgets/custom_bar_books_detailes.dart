import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class CustomBarBookDetailes extends StatelessWidget {
  const CustomBarBookDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width ;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration:const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0), 
          bottomLeft: Radius.circular(20.0), 
          ),
          ),
          width: width*0.4 ,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "19.19 £"  ,
               textAlign: TextAlign.center,
               style: Styles.textStyle20.copyWith(color: Colors.black,fontWeight: FontWeight.w900),
               ),
          ),
        ),
        Container(
          decoration:const BoxDecoration(
          color: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0), 
          bottomRight: Radius.circular(20.0), 
          ),
          ),
          width: width*0.4 ,
          height: 50,
          child:const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Free Review"  ,
              textAlign: TextAlign.center,
              style: Styles.textStyle20,
            ),
          ),
        ),
      ],
    );
  }
}