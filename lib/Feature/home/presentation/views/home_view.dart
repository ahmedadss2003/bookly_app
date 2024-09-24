import 'package:bookly_app/Feature/home/date/repo/home_repo_impl.dart';
import 'package:bookly_app/Feature/home/presentation/maneger/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/maneger/newst_books_cubit/newst_books_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/core/utilts/services_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBookCubit( // Note Here i will use singleton 
            getIt.get<HomeRepoImpl>() ,
          ),
        ),
        BlocProvider(
          create: (context) => NewstBooksCubit(
            getIt.get<HomeRepoImpl>(),
            ),
        ),
      ],
      child:const Scaffold(
        body:HomeViewBody() ,
      ),
    );
  }
}