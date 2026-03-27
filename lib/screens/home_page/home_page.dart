import 'package:flutter/material.dart';
import 'package:my_demo_app/data/book_store.dart';
import 'package:my_demo_app/screens/home_page/components/build_app_bar.dart';
import 'package:my_demo_app/screens/home_page/components/build_book.dart';
import 'package:my_demo_app/screens/home_page/components/build_label.dart';
import 'package:my_demo_app/screens/home_page/components/build_stats_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          const BuildAppBar(),
          SliverToBoxAdapter(
            child: Column(

              children: [
                const BuildLabel(heading: "Quick Actions"),
                const SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  children: [
                    BuildStatsCard(icon: Icons.add_shopping_cart, label: 'Add Book',color: Colors.green,sublabel: "Rent a book"),
                    BuildStatsCard(icon: Icons.remove_shopping_cart, label: 'Return Book',sublabel: "Return a book",color: Colors.redAccent,),
                    BuildStatsCard(icon: Icons.history, label: 'History',sublabel: "View Rent History",color: Colors.blueGrey,),
                  ],
                ),
              ),
                const BuildLabel(heading: "My Books"),
              ],
            ),
          ),
          SliverList.builder(itemCount: BookStore.myBooks.length,itemBuilder: (context,index)=>BuildBook(book: BookStore.myBooks[index]))
        ],
      ),
    );
  }
}
