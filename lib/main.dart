import 'package:bdki_project_test/commons/utils.dart';
import 'package:bdki_project_test/repository/repository_injection.dart';
import 'package:bdki_project_test/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  RepositoryInjection().register();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "JakOne Pay",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      translations: Language(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
