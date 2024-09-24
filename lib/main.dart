import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utilts/app_router.dart';
import 'package:bookly_app/core/utilts/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServicesLocator() ;
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme( //this is font family will be Apply on All the Text of App
          ThemeData.dark().textTheme
        ),
      ),
     
    );
  }
}

