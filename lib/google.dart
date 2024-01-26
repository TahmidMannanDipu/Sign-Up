import 'package:flutter/material.dart';
import 'constant.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      decoration: ShapeDecoration(
        color:const Color(0xFF0165FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        children: [
          Container(
            width: 58,
            height: 48,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                color: Colors.white),
            child: Image.asset('assets/images/google logo.png'),
          ),
          const SizedBox(
            width: 30,
          ),
          const Text(
            'Sign up with Google',
            style: klevelWhiteTextMedium,
          ),
        ],
      ),
    );
  }
}
