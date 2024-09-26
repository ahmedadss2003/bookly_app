import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_image_error_for_image_list_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgUrl});
  final String imgUrl ;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: AspectRatio( 
        aspectRatio: 2.7/4,//to make the ui responsive  
        child: CachedNetworkImage(// i used it to cashed the image
          imageUrl: imgUrl,
          placeholder: (context, url) => const Center(child:  CircularProgressIndicator()),
          errorWidget: (context, url, error) =>const CustomImageErrorForFeatcherListView() ,
          fit: BoxFit.fill,
          ),
      ),
    );
  }
}

