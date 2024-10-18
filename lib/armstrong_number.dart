import 'dart:math';

void main() {
  int number = 154;
  checkArmstrongNumber(number);
 

}

void checkArmstrongNumber(int number) {
   List<String> numberList = number.toString().split('');
  int totalSum = 0;

    for (var number in numberList) {
    int integarNumber = int.parse(number);
    totalSum += pow(integarNumber, numberList.length).toInt();
  }
  if (totalSum == number) {
    print('$number is an Armstrong number');
  } else {
    print('$number is not an Armstrong number');
  }
}
