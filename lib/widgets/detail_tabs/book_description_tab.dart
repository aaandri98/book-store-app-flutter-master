import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';

class BookDescriptionTab extends StatelessWidget {
  const BookDescriptionTab({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 16, bottom: 0),
        child: Text(this.book.description,
            style: Theme.of(context).textTheme.bodyText2));
  }
}
