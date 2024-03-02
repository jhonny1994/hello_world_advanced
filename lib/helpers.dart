String needleFromHaystack(String needle, String haystack) {
  final haystackCount = <String, int>{};

  for (final char in haystack.split('')) {
    haystackCount[char] = (haystackCount[char] ?? 0) + 1;
  }

  var response = '';

  for (final char in needle.split('')) {
    if (haystackCount[char] != null && haystackCount[char]! > 0) {
      response += char;
      haystackCount[char] = haystackCount[char]! - 1;
    }
  }

  return response;
}
