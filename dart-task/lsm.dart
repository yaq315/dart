
void main(){
//task1
List <int>numbers=[7,6,9,2,0,8,4,5];
numbers.sort((a,b) => b.compareTo(a));
print(numbers);

//tAsk2
List<int>n=[1,2,3,4,5,3,4,3];
print('duplicate:$n');
Set<int>num=n.toSet();
print('RemoveDuplicates:$num');


//task3

String y='bcbaaa';
Map<String,int>charcount={};
for(int i = 0; i<y.length;i++){
String char=y[i];
if (charcount.containsKey(char)) {
  charcount[char]=charcount[char]!+1; 
}else{
  charcount[char]=1;
}

}
print(charcount);

//task4
List<int>list1=[1,2,3,4,5];
List<int>list2=[6,7,8,9];
// List<int> mergedList = [];
//  mergedList.addAll(list1);
//  mergedList.addAll(list2);

List<int> mergedList = [...list1, ...list2];
print('meregedlist:$mergedList');


//task5
Set<int>set1={1,2,3,4,5};
Set<int>set2={6,4,7,3,8,9};
Set<int>intersection=set1.intersection(set2);
print(intersection);

//task6

List<int>lis1=[1,2,3,4,5];
List<int>lis2=[1,5];
lis1.removeWhere((element)=>lis2.contains(element));
print('filterlis1:$lis1');

//task7
List<List<int>>multilist=[[1,2],[3,4],[5,6]];
List<int>flatenlist=multilist.expand((element)=>element).toList();
print(flatenlist);

//task8
List<int> number = [1, 2, 3, 5];

  int start = numbers.reduce((a, b) => a < b ? a : b);
  int end = numbers.reduce((a, b) => a > b ? a : b);

  Set<int> fullRange = {for (int i = start; i <= end; i++) i};
  Set<int> givenNumbers = number.toSet();

  List<int> missing = fullRange.difference(givenNumbers).toList();
  print('Missing Numbers: $missing');

  //task9

   String str = "aababc";
  Map<String, int> charCount = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    charCount[char] = (charCount[char] ?? 0) + 1;
  }

  print('Character Frequencies: $charCount');


  //task10

  List<int> nums = [1, 2, 3, 4, 5, 6, 7, 8];

  List<int> evenNums = nums.where((n) => n % 2 == 0).toList();
  print('Even Numbers: $evenNums');


  //task11
   Set<int> set3 = {1, 2, 3,4};
  Set<int> set4 = {4, 5, 6};

  Set<int> unionSet = set3.union(set4);

  print('Union of Sets: $unionSet');

  //task12
    Map<String, dynamic> person = {
    'Name': 'yaqoot',
    'Age': 26,
    'City': 'aqaba',
  };

  person.forEach((key, value) {
    print('$key: $value');
  });

  //task13
  List<int> numb = [1, 3, 5, 7, 9];
  int minNumber = numb.reduce((a, b) => a < b ? a : b);
    print('Minimum Number: $minNumber');
  int maxNumber = numb.reduce((a, b) => a > b ? a : b);
  print('Maximum Number: $maxNumber');

  //task14

Set<int> mySet = {1, 2, 3, 4, 5};

  bool containsElement = mySet.contains(3);

  print('Set contains 3: $containsElement');


  //task15
    Set<int> set5 = {1, 2, 3};
  Set<int> set6 = {3, 4, 5};

  Set<int> difference = set5.difference(set6);

  print('Difference: $difference');


//task16
  Set<int> set7 = {1, 2, 3,4,5};
  Set<int> set8 = {4, 5, 6};

  Set<int> union= set7.union(set8);

  print('Union: $union');

  //task17
List<int> numbe= [1, 2, 3, 2, 4, 5, 3];

  Set<int> uniqueNumbers = Set.from(numbe);

  print('Unique Set: $uniqueNumbers');

  //task18
  Set<int> uniqueSet = {1, 2, 3, 4, 5};

  List<int> numberList = uniqueSet.toList();

  print('Converted List: $numberList');


  //task19

   Map<String, double> products = {
    'Apple': 2.5,
    'Banana': 1.2,
    'Orange': 2.0,
    'Cherry': 3.0
  };


  products['Apple'] = 3.0;
  products.remove('Orange');
  print('Updated Products: $products');

}


