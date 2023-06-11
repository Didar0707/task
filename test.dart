import 'dart:math' as math;

//Problem 1: Even or Odd
 void determineEvenOrOdd(int number) {
    String answer;
    number % 2 == 0 ? answer = 'even' : answer = 'odd'; 

    print("The number $number is $answer!");
 }

 //Problem 2: Fibonacci Series
 determineFibonacci(int series) {
    if(series <= 1)
    return series;
    return determineFibonacci(series-1) + determineFibonacci(series-2);

 }

  //Problem 3 Reverse a String
  String reverseString(String word) {

    String reversedWord = '';

    for(int i = word.length-1; i >=0; i--) {
      reversedWord += word[i];
    }

    return reversedWord;

  }

  //Problem 4: Leap Year
bool isLeapYear(year) {
  if ((year % 4) == 0) {
    if ((year % 100) == 0) {
      if ((year % 400) == 0) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  } else {
    return false;
  }
}

//Problem 5: Prime Numbers
bool isPrime(int number) {
  if (number == 0 || number == 1) return false;

  for (int i = 2; i < number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}

//Problem 6: Palindrome
bool isPalindrome(String word) {
  String reversedWord = reverseString(word.toLowerCase());

  bool answer;

  reversedWord == word.toLowerCase() ? answer = true : answer = false;

  return answer;
}

//Problem 7: Factorial
int factorial(int n) {
  if (n == 0 || n == 1) return 1;

  return n * factorial(n - 1);
}


//Problem 8: Sorting Algorithms
bubbleSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}


List<int> selectionSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    int index = i;
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[index]) {
        index = j;
      }
    }

    if (index != i) {
      int temp = array[i];
      array[i] = array[index];
      array[index] = temp;
    }
  }

  return array;
}

List<int> insertionSort(List<int> array) {
  for (int j = 1; j < array.length; j++) {
    int index = array[j];

    int i = j - 1;

    while (i >= 0 && array[i] > index) {
      array[i + 1] = array[i];
      i = i - 1;
      array[i + 1] = index;
    }
  }
  return array;
}

//Problem 9: Sum of Array Elements
arraySum(List<int> array) {
  int sum = 0;
  array.forEach((element) {
    sum += element;
  });
  return sum;
}

//Problem 10: Find Maximum and Minimum
void minAndMaxArray(List<int> array) {
  var arr = bubbleSort(array);

  print("Min: ${arr[0]}, max: ${arr[(array.length - 1)]}");
}

//Problem 11: Count Vowels and Consonants
void countVowelsConsonants(String sentence) {
  String newSentence = sentence.toLowerCase().replaceAll(' ', '');

  int vowelCount = 0;
  int consonantsCount = 0;

  for (int i = 0; i < newSentence.length; i++) {
    if (newSentence[i] == 'a' ||
        newSentence[i] == 'e' ||
        newSentence[i] == 'i' ||
        newSentence[i] == 'o' ||
        newSentence[i] == 'u') {
      //Increments the vowel counter
      vowelCount++;
    } else {
      //Increments the consonant counter
      consonantsCount++;
    }
  }

  print("Vowels: $vowelCount, consonants: $consonantsCount");
}

//Problem 12: Sum of Digits
int getDigitsSum(int number) {
  int sum = 0;

  for (int i = number; i > 0; i = (i / 10).floor()) {
    sum += (i % 10);
  }

  return sum;
}

//Problem 13: Largest Word in a Sentence
String getTheLargestWord(String sentence) {

  String newSentence = sentence.toLowerCase();

  List<String> seperatedWordsList = [];

  String word = '';
  for(int i = 0; i < sentence.length; i++) {
    
      //comparing in AscII value
      if(newSentence[i].codeUnits[0] >= 97 && newSentence[i].codeUnits[0] <= 122) {
        word += newSentence[i];
      }else{

        if(word.length != 0) {
          seperatedWordsList.add(word);
          word = '';
        }

      }


    }

  //not forget last word
  if(word.length != 0){
    seperatedWordsList.add(word);
  }
    
  int lastLength = 0;
  String largestWord = '';

  //which word is largest
  seperatedWordsList.forEach((element) {
    if(element.length > lastLength) {
      largestWord = element;
      lastLength = element.length;
    }
  });


    return largestWord;
  }

//Problem 14: Duplicate Elements
List<int> findDuplicates(List<int> numbers)
    {
 
        List<int> duplicates = [];
 
        for (int i = 0; i < numbers.length - 1; i++) {
            for (int j = i + 1; j < numbers.length; j++) {

                if (numbers[i] == numbers[j]) {
                    if (duplicates.contains(numbers[i])) {

                        break;
                    }else {

                     duplicates.add(numbers[i]);
                   }
                }
            }
        }

      return duplicates;
        
    }

//Problem 15: Armstrong Number
bool isArmstrong(int number){

  int seperateNumber, answer = 0;

  int numberLength = number.toString().length;


  for(int i = 0; i < numberLength; i++) {
    seperateNumber = int.parse(number.toString()[i]);
    answer += math.pow(seperateNumber, numberLength).toInt();
    
  }


bool result;

  number == answer ? result = true : result = false;

  return result;
}

//Problem 16: Check for Anagrams
bool isAnagram(String firstWord, String secondWord) {

  if(firstWord.length != secondWord.length)
  return false;

  List<int> firstList = [];
  List<int> secondList = [];

  for(int i = 0; i < firstWord.length; i++) {
    firstList.add(firstWord.toLowerCase().codeUnitAt(i));
  }

 for(int i = 0; i < firstWord.length; i++) {
    secondList.add( secondWord.toLowerCase().codeUnitAt(i));
  
  }

print("Unsorted $firstList $secondList");

  firstList.sort();
  secondList.sort();

  for(int i = 0; i < firstList.length; i++) {
    if(firstList[i] != secondList[i]){
      return false;
    }
  }

  print(firstList);
  print(secondList);

  return true;
}

//Problem 17: Find Missing Number
int findMissing(List<int> array)
    {
        int i;
        List<int> anotherList = List.filled(array.length+1, 0);
 
        for (i = 0; i < array.length; i++) {
            anotherList[array[i] - 1] = 1;
        }
 
        int missedNumber = 0;
        for (i = 0; i <= array.length; i++) {
            if (anotherList[i] == 0)
                missedNumber = i + 1;
        }

        return missedNumber;
    }






