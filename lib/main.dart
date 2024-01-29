import 'package:flutter/material.dart';
import 'package:tes/db/db_helper.dart';
import 'package:tes/pages/binding.dart';
import 'package:tes/pages/Home.dart';
import 'package:get/get.dart';

import 'notecreaten_page/note_craetion_page_bindings.dart';
import 'notecreaten_page/note_creation_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      initialRoute: "/",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(
            name: "/",
            page: () => const Homepage(),
            binding: HomeBindings()),
        GetPage(
            name: "/create",
            page: () => const NoteCreationPage(),
            binding: NoteCreationPageBindings()),
      ],
    );
  }
}

