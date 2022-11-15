void main() {
  // practise();
  // next(1, 5);
  turn(5);
}

practise() {
  var myList = [10, 20, 30, 5, 3, 2];
  print(addFunction(myList));
}

int addFunction(List<int> myList) {
  print(myList);

  if (myList.length <= 1) {
    return myList[0];
  } else {
    return anotherFunction(myList);
  }
}

int anotherFunction(List<int> myList) {
  return myList[0] + addFunction(myList.sublist(1));
}

void next(int i, int n) {
  if (i < n) {
    print(i);
    i++;
    next(i, n);
  }
}

void turn(int n) {
  if (n > 1) {
    int i = n - 1;
    print(i);
    turn(i);
  }
}
