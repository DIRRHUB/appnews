import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/presentation/search/page/components/search_filters.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The initial search step page
class InitialSearchStepPage extends StatelessWidget {
  const InitialSearchStepPage({super.key, required this.searchController});
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    final SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
    return Column(
      children: [
        const Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: PaddingConstants.extraLarge),
            child: SearchFilters(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(PaddingConstants.extraLarge),
          child: OneButton(
            width: double.infinity,
            onTap: () {
              bloc.search(query: searchController.text);
            },
            text: context.loc.search,
          ),
        ),
      ],
    );
  }
}
