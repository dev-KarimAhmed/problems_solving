import 'dart:io';

void main() {
  Map<String, String> alphabet = {
    'a': 'z',
    'b': 'y',
    'c': 'x',
    'd': 'w',
    'e': 'v',
    'f': 'u',
    'g': 't',
    'h': 's',
    'i': 'r',
    'j': 'q',
    'k': 'p',
    'l': 'o',
    'm': 'n',
    'n': 'm',
    'o': 'l',
    'p': 'k',
    'q': 'j',
    'r': 'i',
    's': 'h',
    't': 'g',
    'u': 'f',
    'v': 'e',
    'w': 'd',
    'x': 'c',
    'y': 'b',
    'z': 'a',
    '1': '1',
    '2': '2',
    '3': '3',
    '4': '4',
    '5': '5',
    '6': '6',
    '7': '7',
    '8': '8',
    '9': '9',
    '0': '0',
    ' ': ' ',
  };

  String? text = stdin.readLineSync();
  if (text != null) {
    print("----------------------Decoding----------------------");
    decoding(alphabet, text);
    print("----------------------Encoding----------------------");
    encoding(alphabet, text);
  }
}

void encoding(Map<String, String> alphabet, String text) {
  List<String> textList = text.split('');
  String encrypted = '';
  for (var char in textList) {
    if (alphabet.containsKey(char)) {
      encrypted += alphabet[char]!;
    }
  }

  print(encrypted);
}

void decoding(Map<String, String> alphabet, String text) {
  List<String> textList = text.split('');
  String decrypted = '';
  for (var char in textList) {
    if (alphabet.containsValue(char)) {
      decrypted += alphabet.keys.firstWhere((key) => alphabet[key] == char);
    }
  }

  print(decrypted);
}
