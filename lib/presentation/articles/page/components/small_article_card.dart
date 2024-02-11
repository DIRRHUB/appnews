import 'package:appnews/shared/widgets/one_card.dart';
import 'package:flutter/material.dart';

class SmallArticleCard extends StatelessWidget {
  const SmallArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return OneCard(
      child: Container(height: 100),
    );
  }
}
