// 直接导入
import 'package:flutter/material.dart';

// 命名空间
import 'base.dart' as Base;

// 条件导入
import 'base.dart'
if (dart.library.io) 'test.dart';

// layout组件
import './componnets/Layout.dart' as Layout;

void main() {
  // 1、必须逗号结尾
  print('Hello, world!123');


  // 2、定义函数。函数的返回类型可以不用显式声明，默认是void
  test() {

    print('Hello, world!456');

    Map < String, int > map1 = {
      'one': 1,
      'two': 2,
      'three': 3,
    };

    print(map1);

    return 2;
  }
  print(test());

  Base.Animal animal = Base.Animal('Dog', 5);
  animal.makeSound();

  Base.Dog dog = Base.Dog('Buddy', 3);
  dog.makeSound();


  Base.Control control = Base.Control([1, 2, 3]);
  control.test();

  Base.Async async1 = Base.Async();
  async1.run();


  Base.DataStructure dataStructure = Base.DataStructure();
  dataStructure.run();


  runApp(const MyApp());
}



// 02.01、无状态组件
class MyApp extends StatelessWidget {
  const MyApp({
    super.key
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page111'),
    );
  }
}

// 02.02、有状态组件
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State < MyHomePage > createState() => _MyHomePageState();
}

// 02.03、StatefulWidget
class _MyHomePageState extends State < MyHomePage > {
  int _counter = -5;
  // var counter = 0;

  void _incrementCounter() {
    // 02.04、 通过setState更新状态
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;

      print('Spacecraft: $_counter');
    });
  }

  
  TextStyle bold24Roboto =
  const TextStyle(
    color: Colors.red,
    fontSize: 240,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: < Widget > [
            const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: bold24Roboto,
              ),

              Layout.Layout(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}