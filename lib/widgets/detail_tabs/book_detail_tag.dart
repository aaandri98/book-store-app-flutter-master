import 'package:flutter/material.dart';
import 'package:skeleton_app/models/book.dart';
import 'package:skeleton_app/widgets/detail_tabs/book_single_property.dart';

class BookDetailTabWidget extends StatelessWidget {
  const BookDetailTabWidget({
    Key key,
    @required this.book,
  }) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(237, 237, 239, 1)),
              borderRadius: BorderRadius.circular(16)),
          child: Column(children: [
            BookSingleProperty(
                isLast: false,
                property: "Editore:",
                value: this.book.publisher),
            BookSingleProperty(
                isLast: false, property: "Lingua:", value: this.book.language),
            BookSingleProperty(
                isLast: false, property: "ISBN-10:", value: this.book.isbn10),
            BookSingleProperty(
                isLast: false, property: "ISBN-13", value: this.book.isbn13),
            BookSingleProperty(
                isLast: false,
                property: "Peso articolo:",
                value: this.book.weight.toString()),
            BookSingleProperty(
                isLast: true,
                property: "Posizione nella classifica:",
                value: "n. " +
                    this.book.position.toString() +
                    " in Libri più popolari"),
          ]),
        ));
  }
}
