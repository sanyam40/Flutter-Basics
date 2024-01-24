// Ques 1
int prod(List<int> l, {required int a, int val = 8}) {
  int sum = 0;
  for (int i in l) {
    sum += i;
  }
  sum += val;
  return sum * a;
}

// Ques 2
bool check({required String a, int val = 8, List<int>? l}) {
  bool flag = false;
  if (a.length > val) {
    if (l != null) {
      for (int i in l) {
        if (i % 2 == 0) {
          flag = true;
        } else {
          flag = false;
          break;
        }
      }
    }
  }
  if (flag == false) {
    return false;
  } else {
    return true;
  }
}

void main() {
  List<int> l = [2, 6, 2];
  print(check(a: 'Sanyammm', l: l));
}
