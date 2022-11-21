import 'package:flutter/material.dart';
import 'package:poc_clean_arch/core/injectable.dart';
import 'package:poc_clean_arch/features/login/presentation/ui/login_page.dart';

Future<void> main() async {
  await configureInjection();
  runApp(const AppWidget());
}

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
