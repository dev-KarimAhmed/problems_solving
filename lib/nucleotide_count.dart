import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  // Nucleotide nucleotide = Nucleotide(input);
  // nucleotide.getNucleotideCount();

  getNucleotideCount(input);
}

// PP solution

void getNucleotideCount(String? input) {
  Map<String, int> nucleotides = {'A': 0, 'C': 0, 'G': 0, 'T': 0};
  if (input != null) {
  List<String> dnaSequence = input.toUpperCase().split('');
  for (var nucleotide in dnaSequence) {
    if (!nucleotides.containsKey(nucleotide)) {
      throw Exception('Invalid nucleotide in strand');
    } else {
      nucleotides[nucleotide] = nucleotides[nucleotide]! + 1;
    }
  }
}
  print(nucleotides);
}

// OOP solution
class Nucleotide {
  String? input;
  Nucleotide(this.input);
  Map<String, int> nucleotides = {'A': 0, 'C': 0, 'G': 0, 'T': 0};

  void getNucleotideCount() {
    if (input != null) {
      List<String> dnaSequence = input!.toUpperCase().split('');
      for (var nucleotide in dnaSequence) {
        if (!nucleotides.containsKey(nucleotide)) {
          throw Exception('Invalid nucleotide in strand');
        } else {
          nucleotides[nucleotide] = nucleotides[nucleotide]! + 1;
        }
      }
    }

    print(nucleotides);
  }
}
