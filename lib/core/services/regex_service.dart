/// Regex service class to handle regex operations.
abstract class RegexService {
  static String searchByWords(String query) {
    final List<String> queryWords = query.split(' ');
    final List<String> escapedQueryWords = queryWords.map(RegExp.escape).toList();
    final String pattern = escapedQueryWords.join('.*');

    return '.*$pattern.*';
  }
}
