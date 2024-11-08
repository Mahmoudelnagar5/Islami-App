class FeatureModel {
  final String title;
  final String image;

  const FeatureModel({
    required this.title,
    required this.image,
  });
  static List<FeatureModel> features = [
    const FeatureModel(
      title: 'أحاديث',
      image: 'assets/images/hadith.png',
    ),
    const FeatureModel(
      title: 'القرآن الكريم',
      image: 'assets/images/quran.png',
    ),
    const FeatureModel(
      title: 'تسبيح',
      image: 'assets/images/tasbih.jpeg',
    ),
    const FeatureModel(
      title: ' مواقيت الصلاة ',
      image: 'assets/images/prayer_time.png',
    ),
    const FeatureModel(
      title: 'أذكار',
      image: 'assets/images/azkar.png',
    ),
    const FeatureModel(
      title: ' أسماء الله الحسنى',
      image: 'assets/images/assmaAllah.png',
    ),
  ];
}
