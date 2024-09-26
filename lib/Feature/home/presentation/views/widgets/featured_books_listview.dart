import 'package:bookly_app/Feature/home/presentation/maneger/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BlocBuilder<FeatureBookCubit, FeatureBookState>(
        builder: (context, state) {
          if(state is FeatureBookSuccess){
              return ListView.builder(
              physics:const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.book.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    imgUrl: state.book[index].volumeInfo.imageLinks.smallThumbnail,
                  ),
                );
              });
          }
          else if(state is FeatureBookFailure){
            return CustomErrorWidget(errMessage: state.errMessage) ;
          }
          else{
            return const Center(child: CircularProgressIndicator()) ;
          }
        },
      ),
    );
  }
}
