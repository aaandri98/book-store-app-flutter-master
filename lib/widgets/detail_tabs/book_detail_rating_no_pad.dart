import 'package:flutter/material.dart';
import 'package:skeleton_app/themes/books_app_icons_icons.dart';

class BookDetailRatingNoPad extends StatelessWidget {
  final int rating;

  BookDetailRatingNoPad(this.rating);

  List<Widget> _starsForRatings(BuildContext context) {
    List<Widget> stars = [];
    for (int i = 0; i < rating; i++) {
      stars.add(Padding(
        padding: const EdgeInsets.all(2.0),
        child: Icon(
          BooksAppIcons.star,
          size: 11,
          color: Theme.of(context).accentColor,
        ),
      ));
    }
    for (int i = rating; i < 5; i++) {
      stars.add(Icon(
        BooksAppIcons.star,
        size: 11,
        color: Theme.of(context).disabledColor,
      ));
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ..._starsForRatings(context),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "${rating.toStringAsFixed(1)}",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: Theme.of(context).accentColor),
            ),
          ),
          Text(
            " / 5.0",
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Theme.of(context).disabledColor),
          )
        ],
      ),
    );
  }
}
