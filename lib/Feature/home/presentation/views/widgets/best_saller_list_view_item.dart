import 'package:bookly_app/Feature/home/date/models/book_model/book_model.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilts/app_router.dart';
import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kBookDetailes) ;
          },
          child: SizedBox(
            height: 125,//here i don,t need make the height are responsive take this notes 
            child:CustomBookImage(imgUrl: bookModel.volumeInfo.imageLinks.smallThumbnail)
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
                  bookModel.volumeInfo.title!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20.copyWith(
                    fontFamily: kGelasio,
                  ),
                ),
                
              ),
               Text(
                  (bookModel.volumeInfo.authors != null && bookModel.volumeInfo.authors!.isNotEmpty)
      ? bookModel.volumeInfo.authors![0]
      : '',
                style: Styles.textStyle14,),
              const SizedBox(height: 3,), 
               Row(
                children: [
                  Text("Free",style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
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

