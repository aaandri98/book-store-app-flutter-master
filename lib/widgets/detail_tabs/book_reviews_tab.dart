import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/widgets/white_space.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_single_review.dart';
import 'dart:developer';

class BookReviewsTab extends StatelessWidget {
  const BookReviewsTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    final reviewNumber = this.book.reviews.length - 1;

    return Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
            children: this
                .book
                .reviews
                .asMap()
                .entries
                .map((review) => BookSingleReview(
                    bookReview: review.value,
                    isLast: review.key == reviewNumber))
                .toList()));
  }
}
