import 'package:flutter/material.dart';
import '../presentation/pages/chat_page.dart';
import '../presentation/pages/loading_page.dart';
import '../presentation/pages/login_page.dart';
import '../presentation/pages/register_page.dart';
import '../presentation/pages/usuarios_page.dart';

final Map<String,Widget Function(BuildContext)> appRoutes={
  'usuarios': (_)=> const UsuariosPage(),
  'chat': (_)=> const ChatPage(),
  'login': (_)=> const LoginPage(),
  'register': (_)=> const RegisterPage(),
  'loading': (_)=> const LoadingPage(),
};