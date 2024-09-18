import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookly_app/assets_data.dart';
import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar() ,
          FeatureBooksListView(),
          SizedBox(height: 50,),
          Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Text( 
              "Best Saller",
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(height: 20,),
          BestSallerListViewItem(),
        ],
      ),
    );
  }
}
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

         Column(
          children: [
            Text(
              "Ahmed Ashraf" ,
              style: Styles.textStyle18.copyWith(
                // fontFamily: kGelasio,
              )
            ),
          ],
        )
      ],
    ) ;
  }
}