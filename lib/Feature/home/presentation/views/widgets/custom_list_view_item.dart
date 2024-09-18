import 'package:bookly_app/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio( //to make the ui responsive  
      aspectRatio: 2.7/4,
      child: Container(
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(AssetsData.networkImage,)
            ),
        ),
      )
    );
  }
}