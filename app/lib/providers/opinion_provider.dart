import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/opinion.dart';

class OpinionNotifier extends StateNotifier<Opinion?> {
  OpinionNotifier() : super(null);

  void setOpinion(int toiletId, int userId, int rating, String comment) {
    state = Opinion(
      toiletId: toiletId,
      userId: userId,
      rating: rating,
      comment: comment,
    );
  }

  void clearOpinion() {
    state = null;
  }
}

final opinionProvider = StateNotifierProvider<OpinionNotifier, Opinion?>((ref) {
  return OpinionNotifier();
});
