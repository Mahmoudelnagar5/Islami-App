class QuranModel {
  final int id;
  final String name;
  final int verseCount;
  final String type;

  QuranModel({
    required this.id,
    required this.name,
    required this.verseCount,
    required this.type,
  });

  factory QuranModel.fromJson(Map<String, dynamic> json) {
    return QuranModel(
      id: json['id'],
      name: json['name'],
      verseCount: json['verseCount'],
      type: json['type'],
    );
  }
}
