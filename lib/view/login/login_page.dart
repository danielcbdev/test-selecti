import 'package:flutter/material.dart';
import 'package:test_selecti/shared/components/primary_button.dart';
import 'package:test_selecti/shared/components/primary_text_field.dart';
import 'package:test_selecti/shared/theme/app_colors.dart';
import 'package:test_selecti/utils/utils.dart';
import 'package:test_selecti/view/home/home_page.dart';
import 'package:test_selecti/viewmodel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginViewModel? _loginViewModel;
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loginViewModel = LoginViewModel();
    _controllerPassword.addListener(() {
      _loginViewModel!.updatePasswordAllert(_controllerPassword.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), backgroundColor: AppColors.colorPrimary,),
      body: Container(
        color: AppColors.colorSecondary,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryTextField(
                label: "E-mail",
                inputType: TextInputType.emailAddress,
                controller: _controllerEmail,
              ),
              const SizedBox(height: 15,),
              PrimaryTextField(
                label: "Password",
                inputType: TextInputType.visiblePassword,
                controller: _controllerPassword,
                isObscureText: true,
              ),
              ValueListenableBuilder<String>(
                valueListenable: _loginViewModel!.passwordAlert,
                builder: (context, alert, _){
                  if(alert.isNotEmpty){
                    if(alert.length < 6){
                      return const Text(
                        "A senha precisa ter pelo menos 6 caracteres",
                        style: TextStyle(fontSize: 15, color: Colors.red),
                      );
                    } else{
                      return const Center();
                    }
                  } else{
                    return const Center();
                  }
                },
              ),
              const SizedBox(height: 30,),
              PrimaryButton(
                text: "Entrar",
                color: AppColors.colorPrimary,
                textColor: Colors.white,
                width: Utils.getMaxWidth(context),
                press: (){
                  if(_controllerEmail.text.isEmpty || _controllerPassword.text.isEmpty){
                    Utils.showMessageDialog(context, "Informe o e-mail e a senha", Colors.red);
                  } else{
                    var result = _loginViewModel!.loginTest(_controllerEmail.text, _controllerPassword.text);
                    if(result){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                    } else{
                      Utils.showMessageDialog(context, "E-mail ou senha incorretos", Colors.red);
                    }
                  }
                },
              ),
              const SizedBox(height: 10,),
              const Text("Email correto: test@email.com", style: TextStyle(color: Colors.red),),
              const Text("Senha correta: 12345678", style: TextStyle(color: Colors.red),),
            ],
          ),
        )
      ),
    );
  }
}
