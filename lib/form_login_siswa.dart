import 'dart:ui';

import 'package:admin_ui/admin/widgets/costum_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormLoginSiswa extends StatefulWidget {
  const FormLoginSiswa({super.key});

  @override
  _FormLoginSiswaState createState() => _FormLoginSiswaState();
}

class _FormLoginSiswaState extends State<FormLoginSiswa> {
  final _nisnController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _passwordError = false;
  bool _nisnError = false;

  void _validateInputs() {
    setState(() {
      _passwordError = _passwordController.text.length <
          6; // Misalnya, panjang minimal password adalah 6 karakter
      _nisnError = _nisnController.text.length !=
          16; // NISN harus memiliki panjang 16 karakter
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'SIGN IN SISWA',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  padding: EdgeInsets.all(36),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nisnController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person_2_outlined),
                          labelText: 'NISN',
                          errorText: _nisnError
                              ? 'NISN harus memiliki 16 angka'
                              : null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock_outlined),
                          labelText: 'Password',
                          errorText: _passwordError
                              ? 'Password harus memiliki minimal 6 karakter'
                              : null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Sign In as '),
                          GestureDetector(
                            child: Text(
                              'Admin',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/login_admin');
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: CostumBtn(
                          text: ('Login'),
                          onPressed: () {
                            _validateInputs();
                            // Check apakah NISN dan password sudah valid
                            if (!_nisnError && !_passwordError) {
                              // Lakukan autentikasi di sini
                            }
                          },
                        ),
                      )
                    ],
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
