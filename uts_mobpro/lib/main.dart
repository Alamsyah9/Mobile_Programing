import 'package:flutter/material.dart';
import 'package:uts_mobpro/pages/BuatTugasPage.dart';
import 'package:uts_mobpro/pages/DashboardPage.dart';
import 'package:uts_mobpro/pages/ListJadwalPage.dart';
import 'package:uts_mobpro/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Mobile Programming',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/login', // Halaman awal
      routes: {
        '/login': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/list-jadwal': (context) => ListJadwalPage(),
        '/buat-tugas': (context) => BuatTugasPage(),
      },
    );
  }
}
