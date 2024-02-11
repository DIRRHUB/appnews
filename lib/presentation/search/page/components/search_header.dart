import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_text_field.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({super.key});

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: PaddingConstants.extraLarge,
        right: PaddingConstants.extraLarge,
        bottom: PaddingConstants.extraLarge,
        top: PaddingConstants.normal,
      ),
      child: OneTextField(
        labelText: 'Search',
        controller: controller,
      ),
    );
  }
}
