import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/assets_data.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,//here i don,t need make the height are responsive take this notes 
          child: AspectRatio(
            aspectRatio: 2.6/4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10  ),
              child: Image.network(        
                AssetsData.networkImage,
                fit: BoxFit.fill,
                ),
            ),
          ),
        ),
        const SizedBox(width: 30,),
         Expanded(
           child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.5,
                child: Text(
                  "Ahmed Ashraf ahmed  awiunqie asiie" ,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGelasio,
                  ),
                ),
                
              ),
              const Text("This is Book",style: Styles.textStyle14,),
              const SizedBox(height: 3,), 
               Row(
                children: [
                  Text("19.19 £",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                  const Spacer(),
                  const BooksRating(),
                ],
                           )
            ],
            ),
         ),
      ],
    ) ;
  }
}

