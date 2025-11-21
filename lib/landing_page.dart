import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ===== PURPLE BACKGROUND CURVE =====
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: const BoxDecoration(
                color: Color(0xFFC7A4FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
              ),
            ),
          ),

          // ===== MAIN CONTENT =====
          Column(
            children: [
              const SizedBox(height: 70),

              // IMAGE
              Center(
                child: Image.asset(
                  "assets/images/medline.png",
                  width: 300,
                ),
              ),

              const SizedBox(height: 25),

              // DOT INDICATOR
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dot(true),
                  _dot(false),
                  _dot(false),
                ],
              ),

              const Spacer(),

              // TEXT + BUTTONS SECTION
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "MedLine",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
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
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 28),

                    // ====== BUTTONS =======
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // LOGIN BUTTON → go to login.dart
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 42, vertical: 14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text(
                              "LogIn",
                              style: TextStyle(
                                color: Color(0xFF6A1B9A),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),

                        // SIGNUP BUTTON → go to register.dart
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterPage()),
                            );
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 35),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Dot indicator widget
  Widget _dot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: active ? 10 : 7,
      height: active ? 10 : 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? Colors.deepPurple : Colors.grey[400],
      ),
    );
  }
}