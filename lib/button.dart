import 'package:flutter/material.dart';
import 'constant.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor:const Color(0xFFf68f64),
          minimumSize:const Size(380, 64),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
      ),
      onPressed: () {},
      child:const Text(
        'SIGN UP',
        style: klevelWhiteTextMedium,
      ),


    );
  }
}
