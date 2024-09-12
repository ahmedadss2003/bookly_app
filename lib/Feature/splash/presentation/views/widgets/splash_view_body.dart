import 'package:bookly_app/Feature/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}


class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController ;
  late Animation<Offset> slidingAnimation ;

  @override
  void initState() {
    
    super.initState();
    initSlidingAnimation();
  }


  @override
  void dispose() {
    // Dispose of the controller to avoid memory leaks
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/Logo.png"),
        const SizedBox(height: 0,),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

    // this is initSlidingAnimation Method
    void initSlidingAnimation() {
    animationController = AnimationController(vsync: this ,duration:const Duration(seconds: 1));
    slidingAnimation = Tween<Offset>(begin:const Offset(0, 2) , end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
}

