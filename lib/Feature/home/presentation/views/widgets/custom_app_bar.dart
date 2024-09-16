import 'package:bookly_app/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 40),
      child: Row (
        children: [
          Image.asset(AssetsData.logo,height:20 ,),
          const Spacer(),
          IconButton(onPressed: (){}, 
          icon:const Icon(FontAwesomeIcons.magnifyingGlass ,size: 24,)),
        ],
      ),
    );
  } 
}