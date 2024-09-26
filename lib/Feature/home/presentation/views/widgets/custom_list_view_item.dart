import 'package:bookly_app/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgUrl});
  final String imgUrl ;
  @override
  Widget build(BuildContext context) {
    return AspectRatio( //to make the ui responsive  
      aspectRatio: 2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imgUrl
            )
            ),
        ),
      )
    );
  }
}