import 'package:flutter/material.dart';
import 'package:news_app/views/category_list_view.dart';

// import 'package:news_app/widgets/category_list_view.dart';

import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 30,
                ),
              ),
              NewsListViewBuilder(
                category: 'general',
              ),
              NewsListViewBuilder(category: '')
            ],
          ),
        ));
  }
}
