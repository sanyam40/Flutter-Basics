# Flutter Architecture

1. **Framework layer**
   - UI using widgets (Dart)
  
2. **Engine layer**
   - Written in C/C++

3. **Embedder layer**
   - Responsible for communication with the OS and handling network-related operations.

## Widgets

- Basic building blocks of the UI
- Everything in Flutter is a widget

## Stateful vs Stateless Widgets

- **Stateful Widgets:**
  - Dynamic data that can change over time.
  
- **Stateless Widgets:**
  - Static data that never changes.

## Example Code

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
```

- `MaterialApp` is used for the basic structure of the app, and it is the default for Android apps.
- For iOS apps, `CupertinoApp` is used.

## Widget Tree

- The Widget Tree is analogous to the DOM tree in HTML.
- Example Widget Tree structure:
  - Root
    - MaterialApp
      - Scaffold
        - Container
          - Row/Column
            - Other widgets

- The Widget Tree is converted into a render tree at runtime.
