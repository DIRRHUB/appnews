abstract class RegexService {
  static final RegExp _validUrlRegex = RegExp(
    r"^((ftp|http|https):\/\/)?(www.)?(?!.*(ftp|http|https|www.))[a-zA-Z0-9_-]+(\.[a-zA-Z]+)+((\/)[\w#]+)*(($|[a-zA-Z0-9\.\,\/\\;\?\'\\\+&amp;%\$#\=~_\-@]+))*$",
  );
  static final RegExp emailRegex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static final RegExp specialCharRegex = RegExp(r"""[/!@#\$%^&*(),.?":{}|<>\-_\\\[\]\'\/\;\+\=\~\`]""");
  static final RegExp numbersRegex = RegExp(r'\d');
  static final RegExp latinLettersWithNumbersRegex = RegExp('[a-zA-Z0-9]');
  static final RegExp latinLettersRegex = RegExp('[a-zA-Z]');
  static final RegExp lettersRegex = RegExp('[a-zA-Z]');
  static final RegExp facebookRegex = RegExp(r'^(?:https?:\/\/)?(?:www\.)?facebook\.com\/?.*$', caseSensitive: false);
  static final RegExp instagramRegex = RegExp(r'^(?:https?:\/\/)?(?:www\.)?instagram\.com\/?.*$', caseSensitive: false);

  static String searchByWords(String query) {
    final List<String> queryWords = query.split(' ');
    final List<String> escapedQueryWords = queryWords.map(RegExp.escape).toList();
    final String pattern = escapedQueryWords.join('.*');

    return '.*$pattern.*';
  }

  static bool isValidUrl(String query) {
    return _validUrlRegex.hasMatch(query);
  }

  static bool isValidEmail(String query) {
    return emailRegex.hasMatch(query) && !query.contains(' ');
  }

  static bool hasSpecialChar(String query) {
    return specialCharRegex.hasMatch(query);
  }

  static bool hasNumber(String query) {
    return numbersRegex.hasMatch(query);
  }

  static bool isValidRegex(String query, RegExp regex) {
    return regex.hasMatch(query);
  }

  static bool onlyLatinWithNumbersLetter(String query) {
    for (int i = 0; i < query.length; i++) {
      if (!latinLettersWithNumbersRegex.hasMatch(query[i])) {
        return false;
      }
    }
    return true;
  }

  static bool onlyLatinLetter(String query) {
    for (int i = 0; i < query.length; i++) {
      if (!latinLettersRegex.hasMatch(query[i])) {
        return false;
      }
    }
    return true;
  }
}
