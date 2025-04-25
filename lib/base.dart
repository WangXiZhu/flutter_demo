import 'dart:developer';

// 声明函数
void printSelf(String str) {
  // print vs log。
  /**
   * 
   * print: 简单、快速，但功能有限，适合开发阶段的临时调试。
   * log: 更专业，支持时间戳和标签，适合生产环境的日志记录。
   */
  log(str);
}

// 类
class Animal {
  String name;
  int age;

  Animal(this.name, this.age); // 构造函数

  void makeSound() {
    printSelf('Animal sound');
  }
}

// 继承
class Dog extends Animal {
  // 调用父类构造函数， 必须调用！！！。The implicitly invoked unnamed constructor from 'Animal' has required parameters.
  // Try adding an explicit super parameter with the required arguments
  Dog(String name, int age) : super(name, age);
  // Dog(String name, int age); // 调用父类构造函数

  // 方法重写（覆盖）
  @override
  void makeSound() {
    printSelf('Woof! Woof!');
  }
}

// 变量

class Variant{
  // 1、变量声明
  // var vs final vs const
  // var: 声明一个变量，类型可以是任意类型，值可以改变。
  // final: 声明一个变量，类型可以是任意类型，值不能改变。
  // const: 声明一个常量，类型必须是常量，值不能改变。
  // static: 类级别的变量或方法，适用于需要共享的变量或方法（可以与 final 一起使用）。

  // const int d = 2;
  static final int c = 1;
  // c = 2; // 错误：final变量不能改变


  // 2、变量的作用域
  // 全局变量和局部变量
  static int a = 1; // 全局变量
  int b = 2; // 局部变量
}

// 控制逻辑
class Control{
  // 1、联合类型直接使用Object
  // List<int | String> list = [1, 2, 3, '4', '5'];
  List<int> list = [1, 2, 3];
  Map<String, int> map = {
    'one': 1,
    'two': 2,
    'three': 3,
  };

  Control(this.list);
  

  void test() {
    // 1、for循环过程中，会对变量进行动态赋值。所以不能使用const
    // for (const item in list) {

    // 2、也不能使用int。因为list声明的是Object类型，不能赋值给int。如果list本身类型是int，那么可以使用int。
    
    // 3、变量声明 推荐使用 var 或者 final
    for (int item in list) {
      if (item is int) {
        printSelf('int: $item');
      } else if (item is String) {
        printSelf('String: $item');
      }
    }

    // 4.1、遍历map。 for...in
    for(String item in map.keys){
      printSelf('key: $item');
    }

    for(MapEntry<String, int> item in map.entries){
      printSelf('MapEntry: $item');
    }

    // 4.2、遍历map。 forEach
    map.entries.forEach((item) => {
      printSelf('MapEntry forEach: $item')
    });
  }
}


class Async{
  // 1、异步编程。 async是放在末尾!!!（花括号前面）
  run() async{
    printSelf('Async start');

    // 1、async/await
    // async: 声明一个异步函数，返回一个Future对象。
    // await: 等待一个Future对象完成，返回结果。
    Future<String> fetchData(String str) async {
      return 'Async Hello, World! ' + str;
    }

    // 1.1 两种调用方式。方式1，使用then监听
    // 1.2 方式2，使用await
    fetchData('1').then((value) {
      printSelf(value);
    });
    
    printSelf(await fetchData('await 2'));

    // 2、Future
    // Future: 声明一个异步操作，返回一个Future对象。
    // 内部会new Timer(duration)的定时器，然后执行传入的函数，将返回的结果通过Future._complete返回
    Future<String> future = Future.delayed(Duration(seconds: 2), () {
      return 'Hello, World!';
    });

    future.then((value) {
      printSelf(value);
    });

    // 3、Stream
    // 通过Timer的Periodic定时器来实现的
    // Stream: 声明一个异步数据流，返回一个Stream对象。
    Stream<int> stream = Stream.periodic(Duration(seconds: 1), (count) => count);

    stream.listen((data) {
      printSelf('stream : ' + data.toString());
    });

    return 1;
  }
}
