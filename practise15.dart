import 'dart:io';
import 'dart:math';

void main() {
  // task_1();
  // task_2();

  // stepen(4, 5, 1);
  // task_4();
  // helper();
  fib(7);
}

task_1() {
  int a = Random().nextInt(100);
  int b = Random().nextInt(100);
  print("$a+$b= ? ");
  int sum = a + b;
  int answer = int.parse(stdin.readLineSync()!);
  if (answer == sum) {
    print("Correct");
  } else {
    return task_1();
  }
}

void task_2() {
  int a = (1 + Random().nextInt(7 - 1));
  print("\t$a");
  print("1 - throw again \n2 - finish");
  int r = int.parse(stdin.readLineSync()!);
  if (r == 1) {
    task_2();
  } else if (r == 2) {
    print("wasted");
  } else {
    print("repeat");
  }
}

int stepen(int a, int b, int sum) {
  if (b == 0) {
    return sum;
  } else {
    b--;
    sum *= a;
    print(sum);
    return stepen(
      a,
      b,
      sum,
    );
  }
}

task_4() {
  int a = 354;
  List arr = a.toString().split("").toList();

  print(a);
  print(arr);
  helper(arr);
}

int helper(List arr) {
  if (arr.length == 1) {
    return int.parse(arr[0]);
  } else {
    return int.parse(arr[0]) + helper(arr.sublist(1));
  }
}

fib(int n) {
  // int a = 1;
  // int b = 1;
  int sum = 0;
  int count = 2;
  List arr = [1, 1];
  // arr.add(a);
  // arr.add(b);
  // print(arr);
  kelper(n, arr, count, sum);
}

kelper(int n, List arr, int count, int sum) {
  if (arr.length < n) {
    sum = arr[count - 1] + arr[count - 2];
    arr.add(sum);
    count++;

    return kelper(n, arr, count, sum);
  }

  print(arr.last);
  print(" step; $count");
  print(" lenth ${arr.length}");
}

lelper(int n, List arr, int count, int sum) {
  if (arr.length < n) {
    sum = arr[count] + arr[count - 1];
    arr.add(sum);
    count++;

    return lelper(n, arr, count, sum);
  }

  print(arr.last);
  print(count);
  print(arr.length);
}
