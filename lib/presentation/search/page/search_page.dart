import 'package:appnews/core/enums/one_status_enum.dart';
import 'package:appnews/core/enums/search_step_enum.dart';
import 'package:appnews/core/services/global_message_service.dart';
import 'package:appnews/presentation/search/bloc/search_cubit.dart';
import 'package:appnews/presentation/search/bloc/search_state.dart';
import 'package:appnews/presentation/search/page/steps_pages/initial_search_step_page.dart';
import 'package:appnews/presentation/search/page/steps_pages/result_search_step_page.dart';
import 'package:appnews/shared/widgets/one_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key, required this.searchController});
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    final SearchCubit bloc = BlocProvider.of<SearchCubit>(context);
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {
        if (state.errorMessage.isNotEmpty) {
          GlobalMessageService.show(value: state.errorMessage);
        }
      },
      builder: (context, state) {
        if (state.status == OneStatus.loading) {
          return const OneLoading();
        } else {
          if (state.step == SearchStep.initial) {
            return InitialSearchStepPage(searchController: searchController);
          } else if (state.step == SearchStep.result) {
            return ResultSearchStepPage(
              searchController: searchController,
              getEvents: state.getEvents,
              onTap: (int page) {
                bloc.search(query: searchController.text, page: page);
              },
            );
          } else {
            return const Placeholder();
          }
        }
      },
    );
  }
}
