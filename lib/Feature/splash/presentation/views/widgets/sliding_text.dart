
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder( // this widget use to update the text animation only =? listen to (slidingAnimation) then update 
      animation:slidingAnimation ,
      builder: (context,_) {
        return SlideTransition(
          position:slidingAnimation ,
          child: const Text(
          "Read Free Books",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
          ),
        );
      }
    );
  }
}