import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/coffeecover.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              alignment: Alignment.center,
            ),
            Positioned(
                top: 45,
                child: Text("Ruang Coffee",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        color: Color(0xFFF8F4EA),
                        fontWeight: FontWeight.bold))),
            Positioned(
                bottom: 28,
                left: 10,
                right: 10,
                child: Card(
                  color: Color(0xFF3D3C42).withOpacity(0.3),
                  // Memberikan shdow
                  elevation: 10,
                  // Membuat ujung shape tidak runcing
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Cari-cari tempat ngopi !!!',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Color(0xFFF8F4EA),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(
                          'Untuk dapat menikmati semua fitur kami, Anda perlu terhubung terlebih dahulu',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 10, color: Color(0xFFF8F4EA)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/gambar_googel.jpg",
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  'Login Sekarang',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
