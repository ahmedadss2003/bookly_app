import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_bar_books_detailes.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/assets_data.dart';
import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class CustomBookDetailesComponent extends StatelessWidget {
  const CustomBookDetailesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width ;
    return  Column(
      children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.19,vertical: 30),
              child:const CustomBookImage(imgUrl:AssetsData.networkImage,),
            ),
            const Text("The World I see" ,style: Styles.textStyle30,),
            const Text("Albert Einstein" ,style: Styles.textStyle18,),
            const SizedBox(height: 14,),
            const BooksRating(),
            const SizedBox(height: 37,),
            const CustomBarBookDetailes(),
      ],
    );
  }
}
