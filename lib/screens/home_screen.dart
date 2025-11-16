import 'package:flutter/material.dart';
import 'package:mplapp/models/detail_team_page.dart';
import 'package:mplapp/models/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  List<Map<String, String>> teams = [
    {
      "image": "assets/images/rrq.png",
      "title": "REX REGUM QEON",
      "review":
          "RRQ didirikan pada 2013 oleh Andrian Pauline (AP) dan Riki Suliawan, dimulai dari divisi PC seperti DotA 2, Point Blank, dan League of Legends sebelum memasuki era mobile esports dengan divisi MLBB yang kemudian melahirkan RRQ Hoshi. Seiring berkembangnya organisasi, RRQ memperluas sayap ke berbagai game seperti PUBG Mobile, Free Fire, FIFA, Valorant, dan Wild Rift, serta membangun tim luar negeri seperti RRQ Akira di Brasil dan RRQ Kaito di MDL Indonesia. Organisasi ini juga memiliki fasilitas besar seperti RRQ HQ dan fanbase raksasa bernama RRQ Kingdom, salah satu komunitas esports paling aktif di Asia Tenggara. Di MLBB, RRQ meraih daftar prestasi yang sangat panjang seperti juara MPL ID Season 2, 5, 6, dan 9, juara MPL Invitational 4 Nation Cup, dan memenangkan 4 penghargaan MLBB All Star Awards 2020. Mereka juga meraih Runner-Up MSC 2022, Runner-Up MPL ID Season 10, dan prestasi bergengsi di tingkat dunia seperti menjuarai SCOC (Snapdragon Conquest Open Championship). Dengan konsistensi tinggi sejak era awal MLBB, RRQ dianggap sebagai salah satu tim paling bersejarah yang membentuk era kompetitif Mobile Legends.",
    },
    {
      "image": "assets/images/onic.png",
      "title": "ONIC ESPORT",
      "review":
          "ONIC Esports berdiri pada 2018 dan langsung menjadi organisasi esports besar di Indonesia lewat divisi MLBB, Free Fire, dan beberapa game lainnya. Ekspansi besar ONIC terjadi ketika mereka mengakuisisi tim Filipina dan membentuk ONIC PH, yang kemudian tumbuh menjadi salah satu tim MLBB terkuat di dunia. Identitas mereka diperkuat oleh fanbase setia bernama Sonic, komunitas yang mendukung baik ONIC Indonesia maupun ONIC Filipina sebagai satu keluarga besar esports. Kesuksesan ONIC PH sangat fenomenal dengan raihan MPL PH Season 8, Season 10, Season 12, dan puncaknya Juara M6 World Championship. ONIC Indonesia juga bukan tanpa prestasi; mereka memenangkan MPL ID Season 3, Season 8, dan Season 10, dan beberapa kali tampil kuat di turnamen internasional. Dengan dominasi di dua negara berbeda, ONIC kini dianggap sebagai organisasi MLBB paling konsisten dan kuat secara global.",
    },
    {
      "image": "assets/images/tlid.png",
      "title": "TEAM LIQUID INDONESIA (TLID)",
      "review": "Team Liquid adalah organisasi esports global asal Amerika Serikat yang berdiri tahun 2000 oleh Victor Nazgul Goossens, terkenal sebagai salah satu organisasi terbesar dan tertua di dunia. Ekspansi mereka ke Indonesia dilakukan dengan membentuk Team Liquid Indonesia (TLID) dan memasuki skena MLBB dengan roster muda berbakat. Fanbase global mereka, The Cavalry, merupakan salah satu komunitas internasional terbesar yang mendukung semua cabang Liquid termasuk TLID. Sebagai organisasi internasional, Team Liquid memiliki reputasi besar dengan segudang prestasi dunia seperti Juara The International 2017 (Dota 2) dan gelar besar lainnya di berbagai game. TLID sebagai cabang MLBB masih merupakan proyek baru, tetapi dengan dukungan infrastruktur Liquid, kualitas manajemen global, serta pengalaman panjang di dunia esports, TLID menjadi salah satu tim baru yang paling diperhitungkan di MPL Indonesia.",
    },
    {
      "image": "assets/images/evos.png",
      "title": "EVOS GLORY",
      "review":
          "EVOS Esports didirikan tahun 2016 oleh Ivan Yeo, berkembang menjadi salah satu organisasi esports terbesar di Asia Tenggara dengan divisi MLBB, Free Fire, PUBG Mobile, Valorant, Wild Rift, hingga cabang luar negeri seperti EVOS SG dan EVOS Vietnam. Mereka juga memiliki akademi, talent management, serta basis fan besar bernama EVOS Fams, salah satu komunitas esports paling loyal dan aktif di Asia. Di MLBB, EVOS Legends menorehkan sejarah emas dengan menjadi Juara Dunia M1, Juara MPL ID Season 4, dan Juara MPL ID Season 7. EVOS SG juga berhasil meraih prestasi internasional dan tampil di M-Series. Pada 2024, EVOS kembali menambah piala dunia dengan meraih Juara Esports World Cup (EWC) untuk MLBB. Keberhasilan mereka menjadikan EVOS organisasi esports dengan gelar internasional terbanyak dari Indonesia.",
    },
    {
      "image": "assets/images/btr.png",
      "title": "BIGETRON ALPHA (BTR)",
      "review":
          "Bigetron Esports didirikan oleh Edwin “Starlest” Chia pada 2017 dan berkembang menjadi salah satu organisasi mobile esports terbesar di Indonesia. Mereka memiliki divisi MLBB, PUBG Mobile, Free Fire, Valorant, hingga tim luar negeri seperti Bigetron Brazil dan berbagai tim MDL. Fanbase mereka yang solid dikenal sebagai Bigetroopers, komunitas yang sangat loyal dalam mendukung semua divisi BTR. Prestasi internasional terbesar BTR datang dari divisi PUBG Mobile melalui Bigetron Red Aliens (BTR RA) yang menjuarai PMCO Global Finals 2019, serta gelar internasional lain seperti WISE 2020 yang menjadikan mereka salah satu tim PUBG Mobile terbaik di dunia. Di MLBB, BTR Alpha konsisten bersaing di MPL Indonesia dan beberapa kali mencetak pencapaian tinggi, menjadikan Bigetron organisasi yang stabil dan berpengaruh di kancah esports Indonesia.",
    },
    {
      "image": "assets/images/navi.png",
      "title": "NAVI ESPORT",
      "review":
          "NAVI adalah organisasi esports global asal Ukraina yang didirikan tahun 2009 dan terkenal sebagai organisasi legendaris di dunia esports. Mereka dikenal lewat divisi CS:GO, Dota 2, Rainbow Six, hingga berbagai game FPS lainnya. Ekspansi mereka ke Indonesia melalui NAVI MLBB menunjukkan keseriusan mereka memasuki ekosistem Asia Tenggara. Fanbase global mereka bernama Navination, komunitas besar dan sangat aktif, terutama di wilayah Eropa. Secara sejarah, NAVI adalah organisasi yang sangat prestisius dengan gelar besar seperti Juara The International 2011, serta berbagai piala dunia CS:GO termasuk PGL Major Stockholm 2021. Meskipun divisi MLBB NAVI masih relatif baru dan berada pada tahap pengembangan, mereka membawa pengalaman manajemen tingkat dunia yang menjadikan mereka salah satu organisasi global paling dihormati.",
    },
    {
      "image": "assets/images/geek.png",
      "title": "GEEK FAM ID",
      "review":
          "Geek Fam didirikan di Malaysia pada 2016 oleh Keat “Keat” Heng, tumbuh menjadi organisasi besar yang aktif di MLBB, Dota 2, PUBG Mobile, Free Fire, hingga berbagai game lainnya. Mereka memperluas cabang ke Indonesia dengan membentuk Geek Fam ID, yang kini menjadi salah satu tim kuat di MPL Indonesia. Fanbase mereka bernama Geek Fammunity, komunitas pendukung yang solid baik di Malaysia maupun Indonesia. Prestasi Geek Fam di MLBB Malaysia cukup besar dengan beberapa gelar domestik, sementara di Indonesia reputasi mereka meningkat pesat sejak Geek Fam ID berhasil menjadi Grand Finalist MPL ID Season 11. Mereka dikenal sebagai tim pekerja keras dengan perkembangan konsisten dan manajemen yang terus memperkuat posisi Geek Fam ID sebagai salah satu pesaing terbesar di Indonesia.",
    },
    {
      "image": "assets/images/ae.png",
      "title": "ALTER EGO ESPORT",
      "review":
          "Alter Ego berdiri pada 2018 dan langsung dikenal lewat performa luar biasa di MLBB sejak MPL ID Season 4. Selain MLBB, Alter Ego juga memiliki divisi Valorant, PUBG Mobile, dan MDL. Fanbase mereka bernama AlterChamp, komunitas yang sangat aktif dan dikenal vokal dalam mendukung tim di media sosial maupun offline. Di MLBB, Alter Ego mencetak prestasi besar seperti Runner-Up MPL ID Season 6, Juara ONE Esports MPL Invitational 2020, serta beberapa kali menjadi pesaing kuat di turnamen internasional. Mereka juga meraih gelar penting di game lain seperti Valorant tingkat Asia Tenggara, menjadikan Alter Ego salah satu organisasi yang selalu tampil stabil dan relevan di kancah esports Indonesia.",
    },
    {
      "image": "assets/images/dewa.png",
      "title": "DEWA UNITED",
      "review":
          "Dewa United Esports didirikan pada 2020 sebagai bagian dari organisasi olahraga besar Dewa United. Mereka mengembangkan divisi MLBB, PUBG Mobile, Free Fire, dan FIFA dengan pendekatan manajemen profesional dan fasilitas modern. Fanbase mereka, Anak Dewa, tumbuh cukup cepat seiring meningkatnya performa tim. Meskipun tergolong baru, Dewa United menunjukkan perkembangan signifikan melalui divisi MLBB yang tampil kuat di MDL Indonesia dan beberapa kali bersaing di babak Relegation MPL. Di PUBG Mobile, mereka juga beberapa kali masuk papan atas turnamen besar, memperlihatkan bahwa Dewa United adalah organisasi muda dengan pertumbuhan sangat cepat",
    },
    {
      "image": "assets/images/nxl.png",
      "title": "NXL ESPORT",
      "review":
          "Team NXL adalah organisasi esports legendaris Indonesia yang berdiri pada 2005 oleh Richard “NextJacks” Permana. Mereka terkenal sebagai pionir esports Indonesia, terutama di divisi Counter-Strike sebelum memperluas cabang ke MLBB, Free Fire, AOV, dan PUBG Mobile. Fanbase mereka bernama NXL Troopers, salah satu komunitas veteran di dunia esports Indonesia. Prestasi NXL di dunia FPS sangat banyak, termasuk berbagai gelar nasional pada era CS 1.6 dan CS:GO. Mereka juga berpartisipasi di MPL Indonesia pada musim-musim awal MLBB dan mencetak sejumlah prestasi regional. Dengan sejarah panjang hampir dua dekade, NXL dianggap sebagai salah satu organisasi yang membantu membangun fondasi ekosistem esports Indonesia.",
    },
  ];

  // List hasil pencarian
  List<Map<String, String>> filteredTeams = [];

  @override
  void initState() {
    super.initState();
    filteredTeams = teams;
  }

  // Fungsi pencarian
  void searchTeam(String query) {
    final result = teams.where((team) {
      return team["title"]!.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredTeams = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== AppBar Custom =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'MPL ID',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/avatarmpl.png',
                        fit: BoxFit.contain,
                        width: 36,
                        height: 36,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Halo Selamat Datang, Siapakah tim favoritmu?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/maskot.jpg",
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 16),

              // ===== Search Bar (aktif) =====
              TextField(
                controller: searchController,
                cursorColor: Colors.black,
                onChanged: searchTeam,
                decoration: InputDecoration(
                  hintText: "Cari Team...",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Daftar Team Profesional",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              // ===== Menampilkan hasil pencarian =====
              for (var team in filteredTeams)
                _buildReviewCard(
                  context,
                  imageUrl: team["image"]!,
                  title: team["title"]!,
                  review: team["review"]!,
                ),
            ],
          ),
        ),
      ),
    );
  }

  // ===== CARD Detail Team =====
  Widget _buildReviewCard(
    BuildContext context, {
    required String imageUrl,
    required String title,
    required String review,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailTeamPage(
              teamName: title,
              teamLogo: imageUrl,
              description: review,
              roster: getRosterByTeam(title),
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      review,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
