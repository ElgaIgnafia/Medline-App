import 'package:flutter/material.dart';

class MedLineOnboarding extends StatelessWidget {
  const MedLineOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 60),

          // ======= IMAGE SECTION =======
          Image.asset(
            "assets/images/medline.png",
            width: 260,
          ),

          const SizedBox(height: 20),

          // Dot indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dot(isActive: true),
              _dot(),
              _dot(),
            ],
          ),

          const SizedBox(height: 30),

          // ======= PURPLE CURVED CONTAINER =======
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFB388FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "MedLine",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Aplikasi ini memungkinkan pengguna "
                    "memantau antrian secara real-time dengan "
                    "tampilan yang informatif dan mudah dipahami, "
                    "membantu memperkirakan waktu tunggu dan "
                    "mengurangi ketidakpastian saat menunggu "
                    "giliran pelayanan.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.4,
                    ),
                  ),

                  const Spacer(),

                  // === BUTTONS ===
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _roundedButton(
                        text: "LogIn",
                        onTap: () {},
                      ),
                      _textButton(
                        text: "SignUp",
                        onTap: () {},
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Dot widget
  Widget _dot({bool isActive = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 10 : 7,
      height: isActive ? 10 : 7,
      decoration: BoxDecoration(
        color: isActive ? Colors.deepPurple : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }

  // Filled button
  Widget _roundedButton({required String text, required Function onTap}) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // Transparent text button
  Widget _textButton({required String text, required Function onTap}) {
    return InkWell(
      onTap: () => onTap(),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}