import 'package:flutter/material.dart';

class DetailTeamPage extends StatelessWidget {
  final String teamName;
  final String teamLogo;
  final String description;
  final List<Map<String, String>> roster;

  const DetailTeamPage({
    super.key,
    required this.teamName,
    required this.teamLogo,
    required this.description,
    required this.roster,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(teamName),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(teamLogo, width: 120, height: 120)),
            const SizedBox(height: 16),
            Text(description, style: const TextStyle(fontSize: 16), textAlign: TextAlign.justify),
            const SizedBox(height: 24),
            const Text("Prestasi Tim", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 12),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: roster.map((item) {
                  final title = item['name'] ?? '-';
                  final players = item['role'] ?? '-';
                  return _buildTrophyCard(title, players);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrophyCard(String title, String players) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(right: 8),
      elevation: 3,
      child: Container(
        width: 140,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset("assets/images/trophy.png", width: 70, height: 70, fit: BoxFit.contain),
            const SizedBox(height: 8),
            Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, height: 1.2)),
            const SizedBox(height: 6),
            Text(players, textAlign: TextAlign.center, style: const TextStyle(color: Colors.grey, fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
