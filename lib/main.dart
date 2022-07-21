import 'package:bac/Ui/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black));
    //systemNavigationBarColor: color1.withOpacity(0.85)));
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/welcome", page: () => const Welcomepage()),
      ],
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcome",
    );
  }
}
