import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controllers/weather_controller.dart';
import 'views/home_page.dart';
import 'views/settings_page.dart';

/*
*  Mobile Programming - Kelompok 1 - Universitas Pamulang
1. ALDO 211011401581
2. ABDUL RACHMAN 211011402097
3. MOH. ARDIANSYAH 211011400999
4. MUHAMMAD IKHSAN 211011401818
* */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WeatherController(),
        child: Consumer<WeatherController>(
            builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'WeatherApp',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode:
                themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            home: const HomePage(),
            routes: {
              '/settings': (context) => const SettingsPage(),
            },
          );
        }));
  }
}
