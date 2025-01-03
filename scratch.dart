import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  print(task2());
  // task3(task2('jjejj');
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration theDuration = Duration(seconds: 2);
  String result = 'task 2 data';
  await Future.delayed(theDuration, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete $task2Data');
}
