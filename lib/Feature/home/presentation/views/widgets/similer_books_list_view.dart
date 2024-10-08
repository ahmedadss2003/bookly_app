import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/assets_data.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.13,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5),
            child:  CustomBookImage(imgUrl:AssetsData.networkImage,),
          ) ;
        }
        ),
    );
  }
}