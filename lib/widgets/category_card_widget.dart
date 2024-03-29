import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.data,
  });
  final CategoryModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(category: data.categoryName);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 110,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                data.categoryImg,
              ),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              data.categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
