import 'package:flutter/material.dart';

const Color primaryPurple = Color(0xFF9B6DFF);
const Color secondaryPurple = Color(0xFFB69CFF);

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text("Notifikasi", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text("Hari ini - 9 Oktober, 2025", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          notificationTile("Antrian Anda tinggal 2 pasien lagi.", "Baru saja"),
          notificationTile("dr. Usman akan mulai terlambat 30 menit.", "10 menit lalu"),
          notificationTile("Anda memiliki jadwal dengan dr. Nada.", "1 jam lalu"),

          SizedBox(height: 25),
          Text("8 Oktober, 2025", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          notificationTile("Kunjungan Anda di Poli Gigi selesai.", "Kemarin"),
          notificationTile("Anda berhasil mendaftar Poli Anak.", "Kemarin"),
        ],
      ),
    );
  }

  Widget notificationTile(String msg, String time) {
    return ListTile(
      leading: Icon(Icons.notifications, color: primaryPurple),
      title: Text(msg),
      subtitle: Text(time, style: TextStyle(color: primaryPurple)),
    );
  }
}