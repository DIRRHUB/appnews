import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/multi_chips.dart';
import 'package:appnews/shared/widgets/one_dropdown.dart';
import 'package:cool_dropdown/models/one_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          children: [
            OneDropdown<SuggestLocationItem>(
              items: state.locations.map((e) => OneDropdownItem(label: e.suggestLocationLabel.eng, value: e)).toList(),
              onChanged: (value) {},
              hintText: context.loc.location,
              undefinedItem: OneDropdownItem(label: context.loc.noResult, value: SuggestLocationItem.empty()),
            ),
            const SizedBox(height: PaddingConstants.large),
            OneDropdown<SuggestCategoryItem>(
              items: state.categories.map((e) => OneDropdownItem(label: e.label, value: e)).toList(),
              onChanged: (value) {},
              hintText: context.loc.categories,
              undefinedItem: OneDropdownItem(label: context.loc.noResult, value: SuggestCategoryItem.empty()),
            ),
            const SizedBox(height: PaddingConstants.large),
            MultiChips(
              options: state.languages.map((e) {
                return ChipItem(
                  label: e.label,
                  item: e,
                  isSelected: state.selectedLanguages.contains(e),
                  onTap: () {
                    bloc.updateLanguageSelection(e);
                  },
                );
              }).toList(),
              spacing: PaddingConstants.small,
              runSpacing: PaddingConstants.small,
              radius: BorderRadius.circular(BorderRadiusConstants.normal),
            ),
          ],
        );
      },
    );
  }
}
