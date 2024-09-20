import 'package:bookly_app/Feature/home/presentation/views/widgets/similer_books_list_view.dart';
import 'package:bookly_app/core/utilts/styles.dart';
import 'package:flutter/material.dart';

class CustomSimilerBooksComponent extends StatelessWidget {
  const CustomSimilerBooksComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
          Align(
            alignment: Alignment.centerLeft,
              child: Text(
              "You Can Also Like" ,
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,),
            ),
             ),
            const SizedBox(height: 16,),
            const SimilerBooksListView(),
      ],
    );
  }
}