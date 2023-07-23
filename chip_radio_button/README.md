<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Flutter package that provides an alternative look for radio buttons. It uses chips to represent the radio buttons, which can be either vertical or horizontal. The chips can also be unselected or null.

This package is useful for developers who want to add a more modern look to their radio buttons. It is also easy to use, with a simple API.

## Features

Here are some of the features of chip_radio_button:

1. Vertical or horizontal chips
2. Unselected or null chips
3. Simple API
4. MIT license

## Usage

Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
ChipsFilter(
selected: 1, // Select the second filter as default
filters: [
Filter(label: "A - Z", icon: Icons.assessment),
Filter(label: "H - L", icon: Icons.ac_unit),
Filter(label: "Reverse", icon: Icons.all_inclusive),
Filter(label: "A - Z", icon: Icons.assessment),
Filter(label: "H - L", icon: Icons.ac_unit),
Filter(label: "Reverse", icon: Icons.all_inclusive),
],
onTap: (index) {
print('Index ' + index.toString());
},
),
```

## Example screenshot

![alt text](https://raw.githubusercontent.com/filelucker/chip_radio_button_flutter/library/chip_radio_button/example/chip_example.png)

