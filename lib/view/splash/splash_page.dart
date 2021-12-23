import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:test_selecti/shared/theme/app_colors.dart';
import 'package:test_selecti/view/login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: AppColors.colorGradient
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Avaliação Técnica SelecTi',
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 3,
            pause: const Duration(milliseconds: 100),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
    );
  }
}
