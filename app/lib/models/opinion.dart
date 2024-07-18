class Opinion {
  final int toiletId;
  final int userId;
  final int rating;
  final String comment;

  Opinion({
    required this.toiletId,
    required this.userId,
    required this.rating,
    required this.comment,
  });

  // Méthode pour convertir en JSON
  Map<String, dynamic> toJson() {
    return {
      'toilet_id': toiletId,
      'user_id': userId,
      'rating': rating,
      'comment': comment,
    };
  }
}
