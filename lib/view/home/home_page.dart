import 'package:flutter/material.dart';
import 'package:test_selecti/shared/components/primary_button.dart';
import 'package:test_selecti/shared/theme/app_colors.dart';
import 'package:test_selecti/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"),backgroundColor: AppColors.colorPrimary),
      body: Container(
        color: AppColors.colorSecondary,
        height: Utils.getMaxHeight(context),
        width: Utils.getMaxWidth(context),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Bem vindo(a)", style: TextStyle(fontSize: 30, color: Colors.white),),
            const SizedBox(height: 20,),
            PrimaryButton(
              text: "Sair",
              color: AppColors.colorPrimary,
              textColor: Colors.white,
              width: Utils.getMaxWidth(context)*0.4,
              press: (){
                Navigator.pop(context);
              }
            )
          ],
        ),
      ),
    );
  }
}
