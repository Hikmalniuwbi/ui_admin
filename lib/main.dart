import 'package:admin_ui/admin/form_login_admin.dart';
import 'package:admin_ui/admin/home_admin.dart';
import 'package:admin_ui/admin/kelas/list_kelas.dart';
import 'package:admin_ui/admin/kelas/list_siswa_perkelas.dart';
import 'package:admin_ui/admin/lokasi/tentukan_lokasi.dart';
import 'package:admin_ui/admin/petugas/list_petugas.dart';
import 'package:admin_ui/admin/petugas/tambah_petugas.dart';
import 'package:admin_ui/admin/siswa/list_siswa.dart';
import 'package:admin_ui/admin/profile_admin.dart';
import 'package:admin_ui/admin/siswa/detail_siswa.dart';
import 'package:admin_ui/admin/kelas/tambah_kelas.dart';
import 'package:admin_ui/admin/siswa/tambah_siswa.dart';
import 'package:admin_ui/form_login_siswa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

        useMaterial3: true,
      ),
      routes: {
        '/': (context) => HomeAdmin(),
        '/list_siswa': (context) => ListSiswaPage(),
        '/detail_siswa': (context) => DetailSiswa(),
        '/tambah_siswa': (context) => TambahSiswa(),
        '/tambah_kelas': (context) => TambahKelas(),
        '/list_kelas': (context) => ListKelasPage(),
        '/list_siswa_perkelas': (context) => ListSiswaPerkelas(),
        '/list_petugas': (context) => ListPetugas(),
        '/tambah_petugas': (context) => TambahPetugas(),
        '/tentukan_lokasi': (context) => TentukanLokasi(),
        '/login_admin': (context) => FormLoginAdmin(),
        '/login_siswa': (context) => FormLoginSiswa(),
        '/profile_admin': (context) => ProfileAdminPage(),
      },
    );
  }
}
