import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_book_detailes_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
        child: Column(
          children: [
            CustomBookDetailesAppbar(),
          ],
        ),
      ),
    );
  }
}

