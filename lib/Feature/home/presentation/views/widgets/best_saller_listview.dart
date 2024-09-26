import 'package:bookly_app/Feature/home/presentation/maneger/newst_books_cubit/newst_books_cubit.dart';
import 'package:bookly_app/Feature/home/presentation/views/widgets/best_saller_list_view_item.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class NewstBooksListView extends StatelessWidget {
  const NewstBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: BestSallerListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewstBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          // Shimmer effect while loading
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6, // Display 6 shimmer items as placeholders
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    width: double.infinity,
                    height: 120, // Adjust the height to match your list item
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12), // Rounded edges for aesthetics
                    ),
                  ),
                ),
              );
            }, 
          );
        }
      },
    );
  }
}
