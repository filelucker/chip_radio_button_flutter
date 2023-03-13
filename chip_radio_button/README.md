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

Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

A alternative look of flutter radio button

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

