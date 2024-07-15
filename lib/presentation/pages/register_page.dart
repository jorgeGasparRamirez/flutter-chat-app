// ignore_for_file: avoid_print
import 'package:chat/widget/custom_button.dart';
import 'package:chat/widget/custom_input.dart';
import 'package:chat/widget/labels.dart';
import 'package:chat/widget/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(
                  description: 'Registro',
                ),
                _Form(),
                const Labels(
                  nameRoute: 'login',
                  title: 'Ya tienes cuenta?',
                  subtitle: 'Ingresa ahora!',
                ),
                const Text(
                  'Terminos y Condiciones de uso',
                  style: TextStyle(fontWeight: FontWeight.w200),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  void login() {
    print(emailCtrl.text);
    print(passCtrl.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInput(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            textController: nameCtrl,
          ),
          CustomInput(
            icon: Icons.email_outlined,
            placeholder: 'Email',
            textController: emailCtrl,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.password_outlined,
            placeholder: 'Password',
            textController: passCtrl,
            isPassword: true,
          ),
          CustomButton(
            title: 'Ingrese',
            action: login,
          ),
        ],
      ),
    );
  }
}
