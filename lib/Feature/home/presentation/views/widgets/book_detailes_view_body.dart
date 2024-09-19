import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_detailes_appbar.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width ;
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          children: [
              
            const CustomBookDetailesAppbar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.19,vertical: 30),
              child:const FeaturedListViewItem(),
            ),
          ],
        ),
      ),
    );
  }
}

