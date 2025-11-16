List<Map<String, String>> getRosterByTeam(String teamName) {
  switch (teamName) {
    case "REX REGUM QEON":
      return [
        {"name": "Juara MPL ID Season 2", "role": "Lemon, Tuturu, Ayam Jago, Liam, Instinc"},
        {"name": "Juara MPL ID Season 5", "role": "R7, XINNN, Lemon, Vynnn, LJ"},
        {"name": "Juara MPL ID Season 6", "role": "R7, XINNN, Lemon, Vynnn, Alberttt"},
        {"name": "Juara MPL ID Season 9", "role": "R7, Alberttt, Clayyy, Vynnn, Alberttt"},
      ];
    case "ONIC ESPORT":
      return [
        {"name": "Juara MPL ID Season 3", "role": "Antimage, Drian, Sasa, Psychoo, Udil"},
        {"name": "Juara MPL ID Season 8", "role": "Butsss, SANZ, CW, Kiboy, Drian"},
        {"name": "Juara MPL ID Season 10", "role": "Butsss, SANZ, CW, Kiboy, Kairi"},
        {"name": "Juara MPL ID Season 11", "role": "Butsss, SANZ, CW, Kiboy, Kairi"},
        {"name": "Juara MPL ID Season 12", "role": "Butsss, SANZ, CW, Kiboy, Kairi"},
        {"name": "Juara MPL ID Season 13", "role": "Lutpiii, SANZ, CW, Kiboy, Kairi"},
        {"name": "Juara MPL ID Season 15", "role": "Lutpiii, SANZ, Savero, Kiboy, Kairi"},
        {"name": "Juara MPL ID Season 16", "role": "Lutpiii, SANZ, Skylar, Kiboy, Kairi"},
      ];
    case "EVOS GLORY":
      return [
        {"name": "Juara MPL ID Season 4", "role": "Wann, Oura, REKT, Luminaire, Donkey"},
        {"name": "Juara MPL ID Season 7", "role": "Clover, REKT, Ferxiic, Luminaire, Antimage"},
      ];
    case "TEAM LIQUID INDONESIA (TLID)":
      return [
        {"name": "Juara MPL ID Season 14", "role": "Aran, Aeronnshikii, Yehezkiel, Widy, Faviannn"},
      ];
    case "NXL ESPORT":
      return [
        {"name": "Juara MPL ID Season 1", "role": "Watt, G, Rave, LJ, Billy"},
      ];
    default:
      return [
        {"name": "Belum ada data prestasi", "role": "-"},
      ];
  }
}
