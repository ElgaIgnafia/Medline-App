import 'package:flutter/material.dart';

const Color primaryPurple = Color(0xFF9B6DFF);
const Color secondaryPurple = Color(0xFFB69CFF);

class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  int selectedDate = 2;
  int selectedTime = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text("Janji Temu", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(radius: 40, backgroundImage: AssetImage('assets/avatar_doctor.png')),
            SizedBox(height: 10),
            Text("dr. Ita Ignafia", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text("Poli Umum - RSUD Surabaya", style: TextStyle(color: Colors.grey)),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                infoCard("350+", "Pasien"),
                infoCard("15+", "Pengalaman"),
                infoCard("284+", "Ulasan"),
              ],
            ),
            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text("Jadwal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(5, (index) => dateButton(index)),
            ),
            SizedBox(height: 20),

            Align(
              alignment: Alignment.centerLeft,
              child: Text("Jam Kunjungan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(6, (index) => timeButton(index)),
            ),
            SizedBox(height: 25),

            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: primaryPurple,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: (){},
                child: Text("Buat Janji Temu", style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget timeButton(int i) {
    return GestureDetector(
      onTap: () => setState(() => selectedTime = i),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: selectedTime == i ? primaryPurple : Colors.grey.shade300),
          color: selectedTime == i ? primaryPurple.withOpacity(.15) : Colors.white,
        ),
        child: Text("${11 + i}:00", style: TextStyle(color: primaryPurple, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget dateButton(int i) {
    List days = ["Sen", "Sel", "Rab", "Kam", "Jum"];
    return GestureDetector(
      onTap: () => setState(() => selectedDate = i),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: selectedDate == i ? primaryPurple : Colors.white,
        ),
        child: Column(
          children: [
            Text((7 + i).toString(), style: TextStyle(color: selectedDate == i ? Colors.white : Colors.black, fontWeight: FontWeight.bold)),
            Text(days[i], style: TextStyle(color: selectedDate == i ? Colors.white : Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget infoCard(String value, String label) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 25),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [primaryPurple, secondaryPurple]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
          Text(label, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}