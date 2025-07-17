class Review {
  final String userId;
  final String userName;
  final double rating;
  final String? comment;
  // final DateTime timestamp;

  Review({
    required this.userId,
    required this.userName,
    required this.rating,
    this.comment,
    // required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'userName': userName,
        'rating': rating,
        'comment': comment,
        // 'timestamp': timestamp.toIso8601String(),
      };

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        userId: json['userId'],
        userName: json['userName'],
        rating: json['rating'].toDouble(),
        comment: json['comment'],
        // timestamp: DateTime.parse(json['timestamp']),
      );
}
