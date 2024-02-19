import 'package:flutter/material.dart';

class ListSiswaPerkelas extends StatelessWidget {
  const ListSiswaPerkelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Daftar Siswa Perkelas'),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 15, // Jumlah total siswa
            itemBuilder: (BuildContext context, int index) {
              // Sebagai contoh, kita akan menggunakan indeks sebagai data siswa yang fiktif
              String namaSiswa =
                  'Nama Siswa ${index + 1}'; // Misalnya, Siswa 1, Siswa 2, dst.
              String nisn =
                  'NISN ${97235723592725 + index}'; // Misalnya, NISN 1001, NISN 1002, dst.
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  child: ListTile(
                    title: Text(namaSiswa),
                    subtitle: Text(nisn),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
