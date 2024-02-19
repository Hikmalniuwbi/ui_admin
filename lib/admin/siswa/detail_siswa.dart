import 'package:flutter/material.dart';

class DetailSiswa extends StatefulWidget {
  const DetailSiswa({super.key});

  @override
  State<DetailSiswa> createState() => _DetailSiswaState();
}

class _DetailSiswaState extends State<DetailSiswa> {
  final List<Map<String, String>> data = [
    {
      'absenMasuk': '08:00',
      'absenKeluar': '17:00',
      'tanggalAbsen': '2024-01-01'
    },
    {
      'absenMasuk': '08:30',
      'absenKeluar': '17:30',
      'tanggalAbsen': '2024-01-02'
    },
    {
      'absenMasuk': '08:00',
      'absenKeluar': '17:00',
      'tanggalAbsen': '2024-01-03'
    },
    {
      'absenMasuk': '08:30',
      'absenKeluar': '17:30',
      'tanggalAbsen': '2024-01-04'
    },
    {
      'absenMasuk': '08:00',
      'absenKeluar': '17:00',
      'tanggalAbsen': '2024-01-05'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Absen Siswa'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text('Absen Masuk:'),
                            Text(
                              ' ${data[index]['absenMasuk']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text('Absen Keluar:'),
                            Text(
                              ' ${data[index]['absenKeluar']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(' ${data[index]['tanggalAbsen']}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
