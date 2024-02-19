import 'package:admin_ui/admin/widgets/grid_home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
            child: Lottie.asset(
          'assets/adminhome.json',
        )),
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue.shade400,
                      radius: 28,
                      child: IconButton(
                        icon: Icon(
                          Icons.person,
                          size: 36,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile_admin');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  title: Text(
                    'Welcome Back ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 42,
                    ),
                  ),
                  subtitle: Text(
                    'Hikmal', // nama dari petugas yang login
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // GRID UNTUK TIAP MENU
              GridCardHome(),
            ],
          ),
        ),
      ],
    ));
  }
}
