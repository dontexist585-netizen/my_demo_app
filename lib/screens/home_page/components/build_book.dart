import 'package:flutter/material.dart';
import 'package:my_demo_app/data/book.dart';

class BuildBook extends StatelessWidget {
  final Book book;

  const BuildBook({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder( borderRadius: BorderRadiusGeometry.all(Radius.circular(16))),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: .spaceAround,
          spacing: 20,
          children: [
            const Icon(Icons.book, size: 32, color: Colors.brown),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Text(
                      book.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: .w800,
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Text(
                    book.authorName,
                    style: const TextStyle(
                      fontWeight: .w600,
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Rs. ${book.price}",
              style: const TextStyle(color: Colors.green, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}


