class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Точность',
      image: 'assets/image/onboard.png',
      discription:
          "Рассчитывайте свои затраты точно, и будьте уверены в своих подсчетах!"),
  UnbordingContent(
      title: 'Удобство',
      image: 'assets/image/onboard2.png',
      discription:
          "Используйте удобное приложение для рассчета ваших затрат и не переплачивайте!"),
  UnbordingContent(
      title: 'Начнем?',
      image: 'assets/image/onboard3.png',
      discription: "Попробуйте нас!"),
];
