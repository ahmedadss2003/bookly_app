import 'package:bookly_app/Feature/home/presentation/views/widgets/book_detailes_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child:  Scaffold(body: BookDetailesViewBody(),));
  }
}