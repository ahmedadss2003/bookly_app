import 'package:bookly_app/Feature/home/presentation/views/widgets/best_saller_listview.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/featured_books_listview.dart';
import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
    slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar() ,
            FeatureBooksListView(),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text( 
                  "Best Saller",
                  style: Styles.textStyle18,
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
      SliverFillRemaining( //this is like expaned tell the child to take المساحه المتبقيه Becuse shrinkwrap make the listview build the list first time and this is opposite to his work => NOw can remove the shrinkwrap 
        child: BestSallerListView(),
      )
    ],
    );
 
  }
}


