import 'package:my_demo_app/data/book.dart';

class BookStore {
  static final List<Book> _myBooks = [
    Book("Atomic Habits", "James Clear", 499.0),
    Book("The Alchemist", "Paulo Coelho", 299.0),
    Book("Rich Dad Poor Dad", "Robert Kiyosaki", 399.0),
    Book("Ikigai", "Hector Garcia", 350.0),
    Book("Think and Grow Rich", "Napoleon Hill", 450.0),
    Book("The Power of Now", "Eckhart Tolle", 420.0),
    Book("Deep Work", "Cal Newport", 380.0),
    Book("Start With Why", "Simon Sinek", 410.0),
    Book("Zero to One", "Peter Thiel", 370.0),
    Book("The 7 Habits of Highly Effective People", "Stephen Covey", 550.0),
  ];

static  List<Book>  get myBooks =>_myBooks;
}