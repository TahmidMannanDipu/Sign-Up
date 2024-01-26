import 'package:flutter/material.dart';
import 'constant.dart';
import 'google.dart';
import 'button.dart';

class SignupUI extends StatefulWidget {
  const SignupUI({super.key});

  @override
  State<SignupUI> createState() => _SignupUIState();
}

class _SignupUIState extends State<SignupUI> {
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 40),
          Center(
            child: Image.asset('assets/images/logo black 1.png'),
          ),
          const SizedBox(
            height: 89,
          ),
          const Text('Create your Account', style: klevelTitleTextBold),
          const SizedBox(
            height: 8,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Already Have an account?',
                style: klevelBlackTextRegular,
              ),
              Text(
                'Login',
                style: klevelBlueTextRegular,
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const GoogleLogin(),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  'Enter Email Address',
                  style: klevelBlackTextMedium,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            indent: 16,
            endIndent: 16,
            color: Color(0xFF707070),
          ),
          const SizedBox(
            height: 40,
          ),
          const ButtonPage(),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 1,
                width: 82,
                color: const Color(0xFF707070),
              ),
              const SizedBox(
                width: 4,
              ),
              const Text(
                'Other Methods',
                style: klevelBlackTextRegular,
              ),
              const SizedBox(
                width: 4,
              ),
              Container(
                height: 1,
                width: 82,
                color: const Color(0xFF707070),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/google.png'),
              const SizedBox(
                width: 8,
              ),
              Image.asset('assets/images/facebook.png'),
              const SizedBox(
                width: 8,
              ),
              Image.asset('assets/images/Aurora.png'),
              const SizedBox(
                width: 8,
              ),
              Image.asset('assets/images/microsoft.png'),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: checkboxValue,
                onChanged: (bool? value) {
                  setState(() {
                    checkboxValue = value!;
                  });
                },
                activeColor: Color(0xFFf68f64),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                    'By signing up, you consent to our Terms & Conditions, Privacy Policy. , and receiving communications via phone or email, including marketing or non-essential messages, in accordance with privacy regulations.'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
