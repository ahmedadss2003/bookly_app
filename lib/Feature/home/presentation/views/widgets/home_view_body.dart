import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/featured_books_listview.dart';
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
              "Best Saller" ,
              style: Styles.titleMeduiem,
            ),
          ),
        ],
      ),
    );
  }
}
