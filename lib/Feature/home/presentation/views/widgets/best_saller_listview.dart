import 'package:bookly_app/Feature/home/presentation/views/widgets/best_saller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics:const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context , index){
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
          child:  BestSallerListViewItem(),
        ) ;
      }
      );
  }
}