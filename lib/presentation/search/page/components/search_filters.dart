import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:appnews/presentation/search/page/components/search_expanded_tile.dart';
import 'package:appnews/shared/constants/date_constants.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/constants/size_constants.dart';
import 'package:appnews/shared/widgets/multi_chips.dart';
import 'package:appnews/shared/widgets/one_month_calendar.dart';
import 'package:appnews/shared/widgets/one_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

/// The widget for search filters
class SearchFilters extends StatefulWidget {
  const SearchFilters({super.key});

  @override
  State<SearchFilters> createState() => _SearchFiltersState();
}

class _SearchFiltersState extends State<SearchFilters> {
  late final theme = Theme.of(context);
  late final SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
  final TextEditingController languagesController = TextEditingController();
  final TextEditingController locationsController = TextEditingController();
  final TextEditingController categoriesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Column(
          children: [
            SearchExpandedTile(
              title: context.loc.location,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OneTextField(
                    controller: locationsController,
                    labelText: context.loc.enterText,
                    onChanged: (value) {
                      bloc.searchLocation(value);
                    },
                  ),
                  if (state.locations.isNotEmpty || state.selectedLocations.isNotEmpty) ...[
                    const SizedBox(height: PaddingConstants.medium),
                    MultiChips(
                      options: {...state.locations, ...state.selectedLocations}.map((e) {
                        return ChipItem(
                          label: e.suggestLocationLabel.eng,
                          item: e,
                          isSelected: state.selectedLocations.contains(e),
                          onTap: () {
                            bloc.updateLocationSelection(e);
                          },
                        );
                      }).toList(),
                      spacing: PaddingConstants.small,
                      runSpacing: PaddingConstants.small,
                      radius: BorderRadius.circular(BorderRadiusConstants.normal),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: PaddingConstants.large),
            SearchExpandedTile(
              title: context.loc.categories,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OneTextField(
                    controller: categoriesController,
                    labelText: context.loc.enterText,
                    onChanged: (value) {
                      bloc.searchCategory(value);
                    },
                  ),
                  if (state.categories.isNotEmpty || state.selectedCategories.isNotEmpty) ...[
                    const SizedBox(height: PaddingConstants.medium),
                    MultiChips(
                      options: {...state.categories, ...state.selectedCategories}.map((e) {
                        return ChipItem(
                          label: e.getFormattedLabel(),
                          item: e,
                          isSelected: state.selectedCategories.contains(e),
                          onTap: () {
                            bloc.updateCategorySelection(e);
                          },
                        );
                      }).toList(),
                      spacing: PaddingConstants.small,
                      runSpacing: PaddingConstants.small,
                      radius: BorderRadius.circular(BorderRadiusConstants.normal),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: PaddingConstants.large),
            SearchExpandedTile(
              title: context.loc.language,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OneTextField(
                    controller: languagesController,
                    labelText: context.loc.enterText,
                    onChanged: (value) {
                      bloc.searchLanguage(value);
                    },
                  ),
                  if (state.languages.isNotEmpty || state.selectedLanguages.isNotEmpty) ...[
                    const SizedBox(height: PaddingConstants.medium),
                    MultiChips(
                      options: {...state.languages, ...state.selectedLanguages}.map((e) {
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
                ],
              ),
            ),
            const SizedBox(height: PaddingConstants.large),
            SearchExpandedTile(
              title: context.loc.date,
              child: Column(
                children: [
                  if (state.hasStartDate || state.hasEndDate) ...[
                    SizedBox(
                      width: SizeConstants.smallCalendarWidth,
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              _getFormattedDate(state),
                              style: theme.primaryTextTheme.bodyLarge,
                            ),
                          ),
                          const SizedBox(width: PaddingConstants.extraSmall),
                          InkWell(
                            onTap: () {
                              bloc.clearDates();
                            },
                            child: Icon(
                              Icons.close_outlined,
                              size: DimensionConstants.iconExtraSmall,
                              color: theme.colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: PaddingConstants.medium),
                  ],
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.loc.dateStart}:',
                        style: theme.primaryTextTheme.bodyLarge,
                      ),
                      const SizedBox(height: PaddingConstants.small),
                      OneMonthCalendar(
                        focusedDate: state.selectedStartDate,
                        onlyFutureDates: false,
                        onDaySelected: (date) {
                          bloc.selectStartDate(date);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: PaddingConstants.medium),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${context.loc.dateEnd}: ',
                        style: theme.primaryTextTheme.bodyLarge,
                      ),
                      const SizedBox(height: PaddingConstants.small),
                      OneMonthCalendar(
                        focusedDate: state.selectedEndDate,
                        onDaySelected: (date) {
                          bloc.selectEndDate(date);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  String _getFormattedDate(SearchState state) {
    if (state.hasStartDate || state.hasEndDate) {
      if (state.hasStartDate && state.hasEndDate) {
        return '${DateFormat(DateConstants.ddmmyyyy).format(state.selectedStartDate)} - ${DateFormat(DateConstants.ddmmyyyy).format(state.selectedEndDate)}';
      } else if (state.hasStartDate) {
        return '${DateFormat(DateConstants.ddmmyyyy).format(state.selectedStartDate)} - ...';
      } else {
        return '... - ${context.loc.dateEnd}: ${DateFormat(DateConstants.ddmmyyyy).format(state.selectedEndDate)}';
      }
    } else {
      return '';
    }
  }
}
