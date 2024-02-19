import 'package:flutter/material.dart';

class ListPetugas extends StatelessWidget {
  const ListPetugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Daftar Petugas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tambah_petugas');
              },
              icon: Icon(
                Icons.person_add_alt_1_rounded,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 15, // Jumlah total siswa
            itemBuilder: (BuildContext context, int index) {
              // Sebagai contoh, kita akan menggunakan indeks sebagai data siswa yang fiktif
              String petugas =
                  'Petugas ${index + 1}'; // Misalnya, Siswa 1, Siswa 2, dst.
              // Misalnya, NISN 1001, NISN 1002, dst.
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  child: ListTile(
                    title: Text(
                      petugas,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
