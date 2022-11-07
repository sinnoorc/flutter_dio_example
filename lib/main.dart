import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/module/home/bindings/home_bindings.dart';
import 'app/module/home/view/home_view.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dio Example',
      theme: AppTheme.theme,
      home: const HomeView(),
      initialBinding: HomeBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}
