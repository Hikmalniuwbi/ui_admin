import 'package:admin_ui/admin/widgets/costum_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TambahSiswa extends StatelessWidget {
  const TambahSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Tambah Siswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'Nama Lengkap',
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'TTL ',
                  ),
                  //  / Menampilkan keyboard khusus untuk input tanggal
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'NISN',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(16)
                  ], // Menampilkan keyboard khusus untuk input angka
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'Kelas',
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: ' Jurusan',
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: CostumBtn(
                      text: 'Tambah Siswa',
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
