import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/models/book_review.dart';
import 'package:skeleton_app/widgets/custom_divider.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_detail_rating_no_pad.dart';

class BookSingleProperty extends StatelessWidget {
  const BookSingleProperty({
    Key key,
    @required this.isLast,
    @required this.property,
    @required this.value,
  }) : super(key: key);

  final String property;
  final String value;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final items = [
      Row(children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(this.property,
                      style: Theme.of(context).textTheme.caption),
                  Text(this.value, style: Theme.of(context).textTheme.bodyText2)
                ]))
      ]),
      CustomDivider()
    ];

    if (this.isLast) {
      items.removeLast();
    }

    return Column(children: items);
  }
}
