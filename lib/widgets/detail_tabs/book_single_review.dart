import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/models/book_review.dart';
import 'package:skeleton_app/widgets/custom_divider.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_detail_rating_no_pad.dart';

class BookSingleReview extends StatelessWidget {
  const BookSingleReview({
    Key key,
    @required this.isLast,
    @required this.bookReview,
  }) : super(key: key);

  final BookReview bookReview;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final items = [
      Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(this.bookReview.title,
                style: Theme.of(context).textTheme.subtitle1)
          ])),
      Padding(
          padding: const EdgeInsets.all(8),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            BookDetailRatingNoPad(this.bookReview.rating),
          ])),
      Padding(
        padding: const EdgeInsets.all(8),
        child: Text(this.bookReview.text,
            style: Theme.of(context).textTheme.bodyText2),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          child: Container(
              height: 32,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    width: 32,
                    margin: const EdgeInsets.only(right: 8),
                    child: ClipOval(
                        child: Image.network(
                      this.bookReview.authorProfileImage,
                      fit: BoxFit.fitWidth,
                    ))),
                Text(this.bookReview.author,
                    style: Theme.of(context).textTheme.caption),
              ]))),
      CustomDivider()
    ];

    if (this.isLast) {
      items.removeLast();
    }

    return Container(child: Column(children: items));
  }
}
