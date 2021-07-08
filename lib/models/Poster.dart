class Poster {
  String url;

  Poster({required this.url});

  factory Poster.fromJson(Map<String, dynamic> map) {
    return Poster(
      url: map['url'],
    );
  }
}
