import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/helper/binding.dart';
import 'package:weather_app/helper/services.dart';
import 'package:weather_app/layout/home_screen/home_screen.dart';
import 'package:weather_app/shared/styles/themes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Services().AppServices();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp (
      debugShowCheckedModeBanner: false,
      theme:darkTheme(),
      initialBinding: AppBinding(),
      getPages: [
        GetPage(name: '/', page:()=>HomeScreen()),
      ],
    );
  }
}
