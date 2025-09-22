import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyCVApp());
}

class MyCVApp extends StatelessWidget {
  const MyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const CVPage(), debugShowCheckedModeBanner: false);
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  // 🔗 fungsi untuk buka URL
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak bisa membuka $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 800,
          height: 1000,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            children: [
              // Bagian Kiri (Hitam)
              Container(
                width: 280,
                color: Colors.black87,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Foto Profil
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/alipp.jpg"),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(height: 20),

                    // Nama
                    Text(
                      "Alif Rifa'i",
                      style: GoogleFonts.merriweather(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),

                    Text(
                      "Mahasiswa Informatika",
                      style: GoogleFonts.merriweather(
                        fontSize: 14,
                        letterSpacing: 1,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 25),

                    // 🔗 Ikon sosmed bisa diklik
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => _launchUrl(
                            "https://www.facebook.com/share/1CudjfsFqA/?mibextid=wwXIfr",
                          ),
                          child: const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () => _launchUrl(
                            "https://www.instagram.com/alifrifaii_?igsh=MWpwamdmN3g2dGFmbA%3D%3D&utm_source=qr",
                          ),
                          child: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () =>
                              _launchUrl("https://wa.me/6281258911838"),
                          child: const Icon(
                            FontAwesomeIcons.whatsapp,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () =>
                              _launchUrl("https://x.com/chloe40044?s=21"),
                          child: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    // Kontak
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 40,
                      ), // geser isi ke kanan
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // semua isi rata kiri
                        children: [
                          Text(
                            "Contact",
                            style: GoogleFonts.merriweather(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Garis bawah judul
                          Container(
                            width: 70,
                            height: 3,
                            color: Colors.white70,
                            margin: const EdgeInsets.only(bottom: 5),
                          ),
                          const SizedBox(height: 15),

                          // 📧 Email bisa diklik
                          InkWell(
                            onTap: () =>
                                _launchUrl("mailto:alifrifai@email.com"),
                            child: Text(
                              "📧  alifrifai@email.com",
                              style: GoogleFonts.merriweather(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // 📱 Nomor WA bisa diklik
                          InkWell(
                            onTap: () => _launchUrl("tel:+6281258911838"),
                            child: Text(
                              "📱  +62 812-5891-1838",
                              style: GoogleFonts.merriweather(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // 🏠 Alamat (statis aja)
                          Text(
                            "🏠  Samarinda, Perjuangan 4",
                            style: GoogleFonts.merriweather(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Interests
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "Interests",
                              style: GoogleFonts.merriweather(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                          Container(
                            width: 70,
                            height: 3,
                            color: Colors.white70,
                            margin: const EdgeInsets.only(left: 30, bottom: 5),
                          ),
                          const SizedBox(height: 15),

                          // Baris pertama (3 icon)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white70,
                                size: 40,
                              ),
                              SizedBox(width: 25),
                              Icon(
                                Icons.music_note,
                                color: Colors.white70,
                                size: 40,
                              ),
                              SizedBox(width: 25),
                              Icon(
                                Icons.travel_explore,
                                color: Colors.white70,
                                size: 40,
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),

                          // Baris kedua (3 icon)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.sports_esports,
                                color: Colors.white70,
                                size: 40,
                              ),
                              SizedBox(width: 25),
                              Icon(
                                Icons.sports_basketball,
                                color: Colors.white70,
                                size: 40,
                              ),
                              SizedBox(width: 25),
                              Icon(
                                Icons.self_improvement,
                                color: Colors.white70,
                                size: 40,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Bagian Kanan (Putih)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Me?",
                        style: GoogleFonts.merriweather(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      Container(
                        width: 70,
                        height: 3,
                        color: const Color.fromARGB(179, 0, 0, 0),
                        margin: const EdgeInsets.only(bottom: 5),
                      ),
                      const SizedBox(height: 15),

                      Text(
                        "Halo, saya Alip, mahasiswa Informatika yang masih dalam proses menemukan arah terbaik di bidang yang ingin saya tekuni. Saya seorang introvert yang lebih nyaman bekerja dengan fokus dan detail, tapi tetap bisa beradaptasi saat bekerja dalam tim. Saat ini saya bekerja di sebuah restoran makanan, di mana saya belajar banyak tentang kedisiplinan, kerja sama, dan melayani orang lain. Saya selalu terbuka untuk pengalaman baru dan ingin terus berkembang, terutama di dunia teknologi dan IT.",
                        style: GoogleFonts.merriweather(
                          color: Colors.black87,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 25),

                      Text(
                        "Experience",
                        style: GoogleFonts.merriweather(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),

                      Container(
                        width: 70,
                        height: 3,
                        color: const Color.fromARGB(179, 0, 0, 0),
                        margin: const EdgeInsets.only(bottom: 5),
                      ),
                      const SizedBox(height: 15),

                      buildExperienceItem(
                        "Web Developer (Team Project)",
                        "Pure Academy",
                        "2024",
                        "Membangun website pembelajaran interaktif menggunakan HTML, CSS, JavaScript, dan PHP.",
                      ),
                      buildExperienceItem(
                        "Restaurant Staff",
                        "Resto Makanan GoPocha",
                        "2025",
                        "Melayani pelanggan, mengelola pesanan, dan menjaga kebersihan area kerja.",
                      ),
                      buildExperienceItem(
                        "Juara 1 Lomba CID Mobile Legends",
                        "Kompetisi E-Sport Universitas Mulawarman",
                        "2023 - 2024 - 2025",
                        "Memimpin tim untuk memenangkan kejuaraan Mobile Legends tingkat Kampus.",
                      ),
                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildExperienceItem(
    String title,
    String place,
    String year,
    String description,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.merriweather(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            "$place  •  $year",
            style: GoogleFonts.merriweather(
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          Text(
            description,
            style: GoogleFonts.merriweather(
              color: Colors.black54,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
