import 'package:flutter/material.dart';

class ListKelasPage extends StatelessWidget {
  const ListKelasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Daftar Kelas',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tambah_kelas');
              },
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.blue.shade100,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Kelas $index',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int subIndex) {
                        return ListTile(
                          title: Text('Jurusan  '),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/list_siswa_perkelas');
                          },
                        );
                      },
                    ),
                  ],
                );
              },
              childCount: 3,
            ),
          ),
        ],
      )),
    );
  }
}
