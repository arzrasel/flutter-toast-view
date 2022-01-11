# Flutter ToastView Plugin

[![ToastView](https://img.shields.io/badge/OpenFlutter-ToastView-blue.svg)](https://github.com/arzrasel/flutter-toast-view)
[![pub package](https://img.shields.io/pub/v/toast_view.svg)](https://pub.dartlang.org/packages/toast_view)
![GitHub](https://img.shields.io/github/license/arzrasel/flutter-toast-view.svg)
[![GitHub stars](https://img.shields.io/github/stars/arzrasel/flutter-toast-view.svg?style=social&label=Stars)](https://github.com/arzrasel/flutter-toast-view)


## Usage

### 1. Add library to your pubspec.yaml

latest version: [![pub package](https://img.shields.io/pub/v/toast_view.svg)](https://pub.dartlang.org/packages/toast_view)

```yaml
dependencies:
  toast_view: ^latest_version
```

### 2. Import library in dart file

```dart
import "package:toast_view/toast_view.dart";
```

### 3. Wrap your app widget

```dart
ToastView(
  /// set toast style, optional
  child:MaterialApp()
);
```

Tips:
If you happened error like: `No MediaQuery widget found`,
you can try to use this [code](https://github.com/arzrasel/flutter-toast-view/issues/53#issuecomment-628431625)
to include `ToastView` to your App.

```dart
MaterialApp(
  builder: (BuildContext context, Widget? widget) {
    return ToastView(child: widget);
  },
);
```

### 4. Call method `showToast`

```dart
showToast('content');

// position and second have default value, is optional

showToastWidget(Text('hello ToastView'));
```