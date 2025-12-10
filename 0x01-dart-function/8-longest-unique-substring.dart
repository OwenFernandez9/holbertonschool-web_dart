String longestUniqueSubstring(String str) {
    if (str.isEmpty) {
        return '';
    }

    Map<String, int> lastIndex = {};
    int start = 0;
    int maxStart = 0;
    int maxLen = 0;

    for (int i = 0; i < str.length; i++) {
        String ch = str[i];

    if (lastIndex.containsKey(ch) && lastIndex[ch]! >= start) {
        start = lastIndex[ch]! + 1;
    }

    lastIndex[ch] = i;

    int currLen = i - start + 1;
    if (currLen > maxLen) {
      maxLen = currLen;
      maxStart = start;
    }
  }

  return str.substring(maxStart, maxStart + maxLen);
}
