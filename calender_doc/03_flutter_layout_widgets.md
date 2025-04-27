# 📐 Flutter 常用布局组件汇总（含示例）

本指南汇总了 Flutter 中常用的布局组件，帮助你快速掌握 UI 结构搭建核心工具。

---

## 🔲 1. Container（容器）

```dart
Container(
  width: 100,
  height: 100,
  color: Colors.blue,
  child: Text('Hello'),
)
```

- 可用于设置尺寸、边距、边框、背景等
- 类似 HTML 的 `div`

---

## 🧱 2. Row / Column（水平/垂直布局）

```dart
Row(
  children: [
    Icon(Icons.star),
    Text('Starred'),
  ],
)
```

```dart
Column(
  children: [
    Text('Line 1'),
    Text('Line 2'),
  ],
)
```

- Row: 横向布局
- Column: 纵向布局
- 常配合 `MainAxisAlignment` 和 `CrossAxisAlignment`

---

## 🧩 3. Stack（层叠布局）

```dart
Stack(
  children: [
    Container(color: Colors.red, width: 100, height: 100),
    Positioned(
      top: 10,
      left: 10,
      child: Text('Top Layer'),
    ),
  ],
)
```

- 元素可以叠加，适合实现浮层、图片遮罩等

---

## 📦 4. SizedBox（空白空间）

```dart
SizedBox(height: 20)
```

- 占位或用于设置固定尺寸

---

## 🏗️ 5. Expanded / Flexible（弹性布局）

```dart
Row(
  children: [
    Expanded(child: Text('Left')),
    Text('Right'),
  ],
)
```

- `Expanded` 填满剩余空间
- `Flexible` 可选填充空间

---

## 🔁 6. ListView（滚动列表）

```dart
ListView(
  children: [
    Text('Item 1'),
    Text('Item 2'),
  ],
)
```

- 默认垂直滚动，可设定 `scrollDirection` 横向
- 可用于无限滚动（`ListView.builder`）

---

## 🧱 7. GridView（网格布局）

```dart
GridView.count(
  crossAxisCount: 2,
  children: [Text('A'), Text('B')],
)
```

- 类似于 CSS Grid，可指定列数或通过 `GridView.builder` 动态生成

---

## 🧍‍♂️ 8. Align / Center（对齐）

```dart
Center(child: Text('Centered'))
```

```dart
Align(
  alignment: Alignment.bottomRight,
  child: Text('Bottom Right'),
)
```

- 对元素进行局部对齐或居中处理

---

## 🧭 9. Padding / Margin（内边距）

```dart
Padding(
  padding: EdgeInsets.all(8),
  child: Text('With Padding'),
)
```

- 控制组件之间的空隙，建议配合 Container/Column 使用

---

## 🔤 10. Wrap（自动换行）

```dart
Wrap(
  spacing: 8,
  children: [
    Chip(label: Text('A')),
    Chip(label: Text('B')),
    Chip(label: Text('C')),
  ],
)
```

- 超出屏幕自动换行，适合标签、按钮排布等

---

## 🧰 组合技巧

```dart
Padding(
  padding: EdgeInsets.all(16),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Title', style: Theme.of(context).textTheme.headline6),
      SizedBox(height: 8),
      Text('Content goes here.'),
    ],
  ),
)
```

---

## 📚 推荐搭配练习

- 实现一个带顶部标题 + 列表项的页面
- 实现卡片式网格页面（GridView + Card）
- 实现 Stack 叠加浮动按钮

---

📘 更多组件请参考官方文档：https://docs.flutter.dev/ui/widgets/layout
