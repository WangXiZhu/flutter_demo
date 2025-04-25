# Dart vs JavaScript 基础语法对比

## 🔤 变量与类型声明

| 特性           | Dart 示例                                | JavaScript 示例                           | 说明 |
|----------------|------------------------------------------|-------------------------------------------|------|
| 变量声明       | `var name = 'Tom';`<br>`int age = 18;`   | `let name = 'Tom';`<br>`const age = 18;`  | Dart 支持类型推导或显式类型 |
| 常量声明       | `const pi = 3.14;`<br>`final now = DateTime.now();` | `const pi = 3.14;`               | `final` 表示运行时常量，`const` 为编译时常量 |
| 类型系统       | `int`, `String`, `bool`, `double`        | `number`, `string`, `boolean`（TS）       | Dart 是强类型语言，JS 为弱类型 |

---

## 🧮 运算符与表达式

| 特性           | Dart 示例                        | JavaScript 示例                          | 说明 |
|----------------|----------------------------------|------------------------------------------|------|
| 条件表达式     | `a > b ? 'yes' : 'no';`          | `a > b ? 'yes' : 'no';`                  | 一致 |
| 空值合并       | `a ?? 'default'`                 | `a ?? 'default'`                         | 相同 |
| 字符串插值     | `'Hello, $name!'`                | `` `Hello, ${name}!` ``                  | Dart 使用 `$` 插值 |

---

## 📦 数据结构

| 特性           | Dart 示例                        | JavaScript 示例                          | 说明 |
|----------------|----------------------------------|------------------------------------------|------|
| 列表（数组）   | `List<int> nums = [1, 2, 3];`     | `let nums = [1, 2, 3];`                  | Dart 使用泛型 |
| 映射（Map）    | `Map<String, int> ages = {'Tom': 18};` | `let ages = {Tom: 18};`             | Dart 明确 Map 类型 |

---

## 🔧 函数与控制流

| 特性           | Dart 示例                           | JavaScript 示例                        | 说明 |
|----------------|-------------------------------------|----------------------------------------|------|
| 函数定义       | `int add(int a, int b) => a + b;`   | `function add(a, b) { return a + b; }` | Dart 支持箭头函数简写 |
| 命名参数       | `void greet({String name = 'Guest'}) {}` | `function greet(name = 'Guest') {}` | Dart 支持命名参数与默认值 |
| 控制结构       | `if / else / switch / for / while` | 同左                                  | 结构基本一致 |
| 异步函数       | `Future<void> foo() async {}`       | `async function foo() {}`              | 异步处理语法一致 |

---

# Dart vs JavaScript 语法对比（进阶部分）

## 🧬 面向对象（类、继承）

| 特性         | Dart 示例                                       | JavaScript 示例                              | 说明 |
|--------------|------------------------------------------------|----------------------------------------------|------|
| 类定义       | `class Animal { void speak() => print('...'); }` | `class Animal { speak() { console.log('...'); } }` | 语法相似，Dart 使用箭头函数简洁表达 |
| 继承         | `class Dog extends Animal {}`                  | `class Dog extends Animal {}`                | 继承方式一致 |
| 构造函数     | `Dog(String name) : super(name);`             | `constructor(name) { super(name); }`         | Dart 构造函数支持初始化列表 |
| 方法重写     | `@override void speak() {}`                   | `speak() {}`                                 | Dart 使用 `@override` 注解 |

---

## 🔁 控制结构

| 特性         | Dart 示例                       | JavaScript 示例                        | 说明 |
|--------------|--------------------------------|----------------------------------------|------|
| if/else      | `if (a > b) {}`                | `if (a > b) {}`                        | 相同 |
| switch       | `switch(x) { case 1: break; }` | `switch(x) { case 1: break; }`         | 基本一致 |
| for loop     | `for (int i = 0; i < 10; i++)` | `for (let i = 0; i < 10; i++)`         | Dart 强类型 |
| for-in       | `for (var item in items)`      | `for (let item of items)`              | 遍历结构不同，功能相似 |
| while        | `while (x < 5)`                | `while (x < 5)`                        | 一致 |

---

## 🧵 异步处理

| 特性         | Dart 示例                                     | JavaScript 示例                              | 说明 |
|--------------|----------------------------------------------|----------------------------------------------|------|
| Future/Promise | `Future<String> getData()`                   | `async function getData()`                    | Dart 使用 Future 类型，JS 用 Promise |
| async/await  | `await getData();`                           | `await getData();`                           | 相同 |
| 异常处理     | `try { ... } catch (e) {}`                  | `try { ... } catch (e) {}`                   | 相同 |
| Stream（流） | `Stream<int> counterStream()`                | `const stream = new ReadableStream(...)`     | Dart 内建 Stream，常用于 UI 事件或数据流 |

---

## 🔣 泛型与类型系统

| 特性         | Dart 示例                             | JavaScript 示例                         | 说明 |
|--------------|----------------------------------------|-----------------------------------------|------|
| 泛型         | `List<String>`                         | `Array<string>`（TypeScript）           | JS 原生不支持泛型，需要 TypeScript |
| 显式类型     | `int`, `String`, `bool`, `double`      | `number`, `string`, `boolean`（TS）     | Dart 静态强类型 |
| 类型转换     | `as` 强转，`is` 判断                   | `typeof`, `instanceof`                  | Dart 更像 Java/TS 的类型系统 |

---

## 📦 导包与模块系统

| 特性         | Dart 示例                               | JavaScript 示例                           | 说明 |
|--------------|------------------------------------------|-------------------------------------------|------|
| 导入         | `import 'package:flutter/material.dart';` | `import React from 'react';`              | Dart 使用 `import`，类似 TS 模块化 |
| 命名空间     | `import 'lib.dart' as mylib;`            | `import * as mylib from './lib.js';`      | 用法相似 |
| 条件导入     | `import 'a.dart' if (dart.library.io) 'b.dart';` | 无（JS 需手动判断）               | Dart 支持条件导入 |

---

## 🧾 总结建议

- Dart 更适合复杂项目，具备更健壮的静态类型系统和异步支持；
- JS 灵活适合前端快速开发，若熟 TypeScript，迁移 Dart 更容易；
- 建议练习类继承、泛型、Stream 等 Dart 特有特性，提升工程能力；
