// class Person implements Comparable<Person> {
//   String name;
//   int age;

//   Person(this.name, this.age);

//   @override
//   int compareTo(Person other) {
//     return this.age - other.age; // 比较年龄
//   }

//   @override
//   String toString() => '$name ($age)';
// }

// void main() {
//   var person1 = Person('Alice', 25);
//   var person2 = Person('Bob', 30);
//   var person3 = Person('Charlie', 25);

//   print(person1.compareTo(person2)); // 输出: -5 (Alice 比 Bob 小)
//   print(person2.compareTo(person1)); // 输出: 5 (Bob 比 Alice 大)
//   print(person1.compareTo(person3)); // 输出: 0 (Alice 和 Charlie 年龄相同)
// }
//----------------------------------2---------------------------------
// class Person {
//   final String name;
//   final int age;

//   Person(this.name, this.age);

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true; // 检查是否为同一对象
//     if (other is! Person) return false; // 检查类型是否相同
//     return name == other.name && age == other.age; // 比较属性
//   }

//   @override
//   int get hashCode => name.hashCode ^ age.hashCode; // 组合哈希值
// }

// void main() {
//   var person1 = Person('Alice', 25);
//   var person2 = Person('Bob', 30);
//   var person3 = Person('Alice', 25);

//   var map = <Person, String>{person1: 'Developer', person2: 'Designer'};

//   print(map[person1]); // 输出: Developer
//   print(map[person3]); // 输出: Developer (person3 与 person1 相等)
//   print(map[Person('Bob', 30)]); // 输出: Designer
//   print(person1 == person3); // 输出: true
//   print(person1.hashCode == person3.hashCode); // 输出: true
// }
// ---------------------------------3------------------------------------
import 'package:intl/intl.dart';

void main() {
  var chinaTime = DateTime(2023, 3, 12, 0, 0, 0); // 北京时间
  var nextDayChina = chinaTime.add(Duration(days: 1));
  print(DateFormat('yyyy-MM-dd HH:mm:ss').format(nextDayChina));
  // 输出: 2023-03-13 00:00:00（正确）
  var newYorkTime = DateTime(2023, 3, 12, 0, 0, 0); // 纽约时间（UTC-5）
  var nextDayNewYork = newYorkTime.add(Duration(days: 1));
  print(DateFormat('yyyy-MM-dd HH:mm:ss').format(nextDayNewYork));
  // 输出: 2023-03-13 00:00:00（看似正确，但实际上少算1小时）
  var londonTime = DateTime(2023, 3, 26, 0, 0, 0); // 伦敦时间（UTC+0）
  var nextDayLondon = londonTime.add(Duration(days: 1));
  print(DateFormat('yyyy-MM-dd HH:mm:ss').format(nextDayLondon));
  // 输出: 2023-03-27 00:00:00（少算1小时）
  var cairoTime = DateTime(2023, 3, 12, 0, 0, 0); // 开罗时间（UTC+2）
  var nextDayCairo = cairoTime.add(Duration(days: 1));
  print(DateFormat('yyyy-MM-dd HH:mm:ss').format(nextDayCairo));
  // 输出: 2023-03-13 00:00:00（正确）
  var utcTime = DateTime.utc(2023, 3, 12, 0, 0, 0); // UTC 时间
  var nextDayUtc = utcTime.add(Duration(days: 1));
  print(DateFormat('yyyy-MM-dd HH:mm:ss').format(nextDayUtc));
  // 输出: 2023-03-13 00:00:00（绝对正确）
}
