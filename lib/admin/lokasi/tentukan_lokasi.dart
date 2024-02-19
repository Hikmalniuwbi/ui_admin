import 'package:admin_ui/admin/widgets/costum_btn.dart';
import 'package:flutter/material.dart';

class TentukanLokasi extends StatelessWidget {
  const TentukanLokasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tentukan Lokasi'),
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
                    labelText: 'Jarak ',
                  ),
                ),
                SizedBox(height: 20.0),
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
