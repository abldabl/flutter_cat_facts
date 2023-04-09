enum AppRoutesEnum {
  fact(path: '/'),
  factHistory(path: '/factHistory');

  const AppRoutesEnum({required this.path});
  final String path;
}
