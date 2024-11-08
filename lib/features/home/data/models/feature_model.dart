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
      image: 'assets/images/hadiths.svg',
    ),
    const FeatureModel(
      title: 'القرآن الكريم',
      image: 'assets/images/the_holy_quran.svg',
    ),
    const FeatureModel(
      title: 'تسبيح',
      image: 'assets/images/tasbih.svg',
    ),
    const FeatureModel(
      title: ' مواقيت الصلاة ',
      image: 'assets/images/mosque.svg',
    ),
    const FeatureModel(
      title: 'أذكار',
      image: 'assets/images/moon.svg',
    ),
    const FeatureModel(
      title: ' أسماء الله الحسنى',
      image: 'assets/images/Allah.svg',
    ),
  ];
}
