import 'package:admin_ui/admin/widgets/costum_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormLoginAdmin extends StatefulWidget {
  const FormLoginAdmin({Key? key}) : super(key: key);

  @override
  State<FormLoginAdmin> createState() => _FormLoginAdminState();
}

class _FormLoginAdminState extends State<FormLoginAdmin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _emailError = false;
  bool _passwordError = false;

  void _validateInputs() {
    setState(() {
      _emailError = _emailController.text.isEmpty;
      _passwordError = _passwordController.text.isEmpty;
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
                    'SIGN IN ADMIN',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(36),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          icon: Icon(Icons.person_2_outlined),
                          labelText: 'Email',
                          errorText: _emailError ? 'Email harus diisi' : null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock_outlined),
                          labelText: 'Password',
                          errorText:
                              _passwordError ? 'Password harus diisi' : null,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Sign In as '),
                          GestureDetector(
                            child: Text(
                              'Siswa',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context, '/login_siswa');
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        child: CostumBtn(
                          text: 'Login',
                          onPressed: () {
                            _validateInputs();
                            if (!_emailError && !_passwordError) {
                              // Lakukan validasi login admin di sini
                              // Misalnya, cek apakah email dan password sesuai
                            }
                          },
                        ),
                      ),
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
