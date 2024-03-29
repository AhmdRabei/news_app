import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});
  final List<CategoryModel> category = const [
    CategoryModel(
      categoryImg: 'assets/business.avif',
      categoryName: 'Business',
    ),
    CategoryModel(
      categoryImg: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    CategoryModel(
      categoryImg: 'assets/general.avif',
      categoryName: 'General',
    ),
    CategoryModel(
      categoryImg: 'assets/health.avif',
      categoryName: 'Health',
    ),
    CategoryModel(
      categoryImg: 'assets/science.avif',
      categoryName: 'Science',
    ),
    CategoryModel(
      categoryImg: 'assets/sports.avif',
      categoryName: 'Sports',
    ),
    CategoryModel(
      categoryImg: 'assets/technology.jpeg',
      categoryName: 'Technology',
    ),
  ];
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              data: category[index],
            );
          }),
    );
  }
}
