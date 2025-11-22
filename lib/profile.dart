import 'package:flutter/material.dart';

const Color primaryPurple = Color(0xFF9B6DFF);
const Color secondaryPurple = Color(0xFFB69CFF);

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profil", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(radius: 35, backgroundImage: AssetImage('assets/avatar_user.png')),
                SizedBox(width: 15),
                Text("Anindya Dalila", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),

          ListTile(leading: Icon(Icons.person), title: Text("Akun Saya")),
          ListTile(leading: Icon(Icons.lock), title: Text("Face ID / Touch ID"), trailing: Switch(value: false, onChanged: (v) {})),
          ListTile(leading: Icon(Icons.security), title: Text("Autentikasi Dua Faktor")),
          ListTile(leading: Icon(Icons.logout), title: Text("Keluar")),
        ],
      ),
    );
  }
}