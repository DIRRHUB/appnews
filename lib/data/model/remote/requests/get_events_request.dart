import 'package:appnews/core/extensions/datetime_extension.dart';
import 'package:appnews/core/helper/global_constants.dart';
import 'package:appnews/core/helper/serializable_interface.dart';
import 'package:appnews/domain/entity/suggest_categories/suggest_category_item.dart';
import 'package:appnews/domain/entity/suggest_languages/suggest_language_item.dart';
import 'package:appnews/domain/entity/suggest_locations/suggest_location_item.dart';

class GetEventRequest {
  final String request;
  final List<SuggestLocationItem> locations;
  final List<SuggestCategoryItem> categories;
  final List<SuggestLanguageItem> languages;
  final DateTime? startDate;
  final DateTime? endDate;
  final int page;
  GetEventRequest({
    required this.request,
    required this.locations,
    required this.categories,
    required this.languages,
    required this.page,
    this.startDate,
    this.endDate,
  });

  late Json body = {
    'query': {
      '\$query': {
        '\$and': [
          getRequest(),
          if (categories.isNotEmpty) getCategories(),
          if (locations.isNotEmpty) getLocations(),
          if (languages.isNotEmpty) getLanguages(),
          if (startDate != null || endDate != null) getDate(),
        ],
      },
    },
    'resultType': 'events',
    'eventsSortBy': 'date',
    'includeConceptImage': true,
    'includeEventConcepts': false,
    'eventImageCount': 1,
    'storyImageCount': 1,
    'eventsPage': page,
    'eventsCount': 50,
    'apiKey': GlobalConstants.newsApiKey,
  };

  Map? getRequest() {
    return {
      '\$or': [
        {'keyword': request, 'keywordLoc': 'title'},
        {'keyword': request, 'keywordLoc': 'body'},
      ],
    };
  }

  Map? getCategories() {
    if (categories.isEmpty) {
      return null;
    } else {
      return {
        '\$or': categories.map((e) => {'categoryUri': e.uri}).toList(),
      };
    }
  }

  Map? getLocations() {
    if (locations.isEmpty) {
      return null;
    } else {
      return {
        '\$or': locations.map((e) => {'locationUri': e.wikiUri}).toList(),
      };
    }
  }

  Map? getLanguages() {
    if (languages.isEmpty) {
      return null;
    } else {
      return {
        '\$or': languages.map((e) => {'lang': e.code}).toList(),
      };
    }
  }

  Map? getDate() {
    if (startDate == null && endDate == null) {
      return null;
    } else {
      if (startDate != null && endDate == null) {
        return {
          'dateStart': startDate?.toSimpleFormat(),
        };
      } else if (startDate == null && endDate != null) {
        return {
          'dateEnd': endDate?.toSimpleFormat(),
        };
      } else {
        return {
          'dateStart': startDate?.toSimpleFormat(),
          'dateEnd': endDate?.toSimpleFormat(),
        };
      }
    }
  }
}
