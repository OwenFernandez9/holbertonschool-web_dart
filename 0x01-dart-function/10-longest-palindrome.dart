import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longest = 'none';
  int maxLen = 0;

    for (int i = 0; i < s.length; i++) {
        for (int j = i + 3; j <= s.length; j++) {
            String sub = s.substring(i, j);

            if (isPalindrome(sub) && sub.length > maxLen) {
                maxLen = sub.length;
                longest = sub;
            }
        }
    }

  return longest;
}
