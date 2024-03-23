import 'package:appnews/core/enums/home_step_enum.dart';
import 'package:appnews/core/enums/search_step_enum.dart';
import 'package:appnews/core/extensions/localization_extension.dart';
import 'package:appnews/presentation/home/bloc/home_cubit.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/shared/widgets/one_icon_button.dart';
import 'package:appnews/shared/widgets/one_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final SearchCubit searchBloc = BlocProvider.of<SearchCubit>(context);
    final HomeCubit homeBloc = BlocProvider.of<HomeCubit>(context);
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: PaddingConstants.extraLarge,
            right: PaddingConstants.extraLarge,
            bottom: PaddingConstants.extraLarge,
            top: PaddingConstants.normal,
          ),
          child: Row(
            children: [
              if (state.step == SearchStep.result) ...[
                OneIconButton(
                  icon: Icons.arrow_back,
                  onTap: () {
                    searchBloc.setStep(SearchStep.initial);
                  },
                  backgroundColor: theme.colorScheme.surface,
                  height: PaddingConstants.extraImmenseSmall,
                  width: PaddingConstants.extraImmenseSmall,
                  iconSize: DimensionConstants.iconNormal,
                  borderSide: BorderSide(color: theme.colorScheme.surfaceVariant),
                  borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                ),
                const SizedBox(width: PaddingConstants.medium),
              ] else if (state.step == SearchStep.initial && controller.text.isNotEmpty) ...[
                OneIconButton(
                  icon: Icons.arrow_back,
                  onTap: () {
                    controller.clear();
                    homeBloc.setStep(HomeStep.initial);
                    searchBloc.clearSearch();
                  },
                  backgroundColor: theme.colorScheme.surface,
                  height: PaddingConstants.extraImmenseSmall,
                  width: PaddingConstants.extraImmenseSmall,
                  iconSize: DimensionConstants.iconNormal,
                  borderSide: BorderSide(color: theme.colorScheme.surfaceVariant),
                  borderRadius: BorderRadius.circular(BorderRadiusConstants.large),
                ),
                const SizedBox(width: PaddingConstants.medium),
              ],
              Expanded(
                child: OneTextField(
                  labelText: context.loc.search,
                  controller: controller,
                  onChanged: (value) {
                    if (state.searchRequest != controller.text && state.step == SearchStep.result) {
                      searchBloc.setStep(SearchStep.initial);
                    } else {
                      if (value.isNotEmpty) {
                        homeBloc.setStep(HomeStep.search);
                      } else {
                        homeBloc.setStep(HomeStep.initial);
                        searchBloc.clearSearch();
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
