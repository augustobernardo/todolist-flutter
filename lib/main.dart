import 'package:flutter/material.dart';
import 'package:todolist/pages/Drawerhiden/hidendrawer.dart';
import 'package:provider/provider.dart';
import 'data/shared/Task_saved.dart';
import 'data/thems.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await TaskerPreference.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemProvider(),
        builder: (context, _) {
          final themProvider = Provider.of<ThemProvider>(context);
          return MaterialApp(
            title: 'TodoList',
            debugShowCheckedModeBanner: false,
            themeMode: themProvider.themeMode,
            darkTheme: Mytheme.darkthem,
            theme: Mytheme.lightthem,
            home: HidenDrawer(),
          );
        },
      );
}
