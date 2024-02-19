import 'package:flutter/material.dart';

class GridCardHome extends StatelessWidget {
  const GridCardHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: [
        // TAMBAH SISWA
        _buildCard(
          context,
          icon: Icons.school,
          title: 'Siswa',
          routeName: '/list_siswa',
        ),
        // TAMBAH KELAS
        _buildCard(
          context,
          icon: Icons.class_,
          title: 'Kelas',
          routeName: '/list_kelas',
        ),
        // TENTUKAN LOKASI
        _buildCard(
          context,
          icon: Icons.add_location_alt_outlined,
          title: 'Tentukan Lokasi',
          routeName: '/tentukan_lokasi',
        ),
        _buildCard(
          context,
          icon: Icons.group,
          title: 'Petugas',
          routeName: '/list_petugas',
        ),
      ],
    );
  }

  Widget _buildCard(BuildContext context,
      {required IconData icon,
      required String title,
      required String routeName}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Card(
        color: Colors.blue.shade400,
        elevation: 7,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, size: 36),
                  Spacer(),
                  Icon(Icons.chevron_right),
                ],
              ),
              SizedBox(height: 18),
              Text(
                title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
