import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:flutter/material.dart';

class SmallArticleCard extends StatelessWidget {
  const SmallArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(BorderRadiusConstants.normal), color: Colors.green),
      child: const Column(
        children: [],
      ),
    );
  }
}
