import 'package:admin_ui/admin/widgets/costum_btn.dart';
import 'package:flutter/material.dart';

class TambahKelas extends StatelessWidget {
  const TambahKelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Tambah Kelas',
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
                    labelText: 'Kelas ',
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: 'Jurusan ',
                  ),
                  //  / Menampilkan keyboard khusus untuk input tanggal
                ),
                SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: CostumBtn(
                      text: 'Simpan',
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
