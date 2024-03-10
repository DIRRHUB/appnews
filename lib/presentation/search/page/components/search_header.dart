import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_text_field.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, required this.onTap, required this.controller});
  final TextEditingController controller;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Container(
        padding: const EdgeInsets.only(
          left: PaddingConstants.extraLarge,
          right: PaddingConstants.extraLarge,
          bottom: PaddingConstants.extraLarge,
          top: PaddingConstants.normal,
        ),
        child: OneTextField(
          labelText: context.loc.search,
          controller: controller,
          onTap: onTap,
        ),
      ),
    );
  }
}
