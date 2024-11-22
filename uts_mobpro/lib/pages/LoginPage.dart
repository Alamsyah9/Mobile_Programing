import 'package:flutter/material.dart';
import "package:simple_icons/simple_icons.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 160,
                    width: 160,
                    child: Image.asset('assets/login/logo.png')),
                SizedBox(height: 20),
                Text(
                  'Jadwalku',
                  style: TextStyle(
                    color: Colors.deepPurpleAccent[400],
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Selamat Datang',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[400]
                  ),
                ),
                Text(
                  'Dharma Alamsyah S.A (4122008) - Kelas A',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                  ),
                ),
                SizedBox(height: 20),
                // Kolom input username
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.blueGrey)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                // Kolom input password
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.blueGrey)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                // Tombol login
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Colors.deepPurple[400], // Warna utama tombol
                    foregroundColor: Colors.white, // Warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Sesuaikan radius sesuai kebutuhan
                    ),
                    minimumSize: Size(600, 50), // Sesuaikan ukuran tombol
                  ),
                  child: Text('Login'),
                ),
                SizedBox(height: 20),
                Text('or', style: TextStyle(color: Colors.deepPurple)),
                SizedBox(height: 20),
                // Tombol login Google
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika ketika tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Warna utama tombol
                    foregroundColor: Colors.blueGrey, // Warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Sesuaikan radius sesuai kebutuhan
                    ),
                    minimumSize: Size(400, 50), // Sesuaikan ukuran tombol
                  ),
                  child: Row(
                    children: [
                      Icon(SimpleIcons.google),
                      SizedBox(width: 10),
                      Expanded(child: Text("Sign in with google account")),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // Tombol login Apple
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika ketika tombol ditekan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Warna utama tombol
                    foregroundColor: Colors.blueGrey, // Warna teks
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Sesuaikan radius sesuai kebutuhan
                    ),
                    minimumSize: Size(400, 50), // Sesuaikan ukuran tombol
                  ),
                  child: Row(
                    children: [
                      Icon(SimpleIcons.apple),
                      SizedBox(width: 10),
                      Expanded(child: Text("Sign in with Apple ID")),
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
