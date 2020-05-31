# not_paid

Worried about your paymemt..? Using this package you can provide a non paid version of app to the client that consistently starts fading out the app/sections after the due date and fades it completly when the deadline is exceeded.

## Supported Dart Versions
**Dart SDK version >= 2.1.0**

## Demo Screen Shots

<img src="https://raw.githubusercontent.com/hd-motion/flutter_not_paid/master/screenshots/before_due_date.png" height="25%" width="25%"  alt="Before due date demo"/><img src="https://raw.githubusercontent.com/hd-motion/flutter_not_paid/master/screenshots/after_due_date.png"   height="25%" width="25%" alt="After due date(mid deadline) demo" /> <img src="https://raw.githubusercontent.com/hd-motion/flutter_not_paid/master/screenshots/deadline_exceeded.png"   height="25%" width="25%" alt="Deadline exceeded demo" />


## Installation
[![Pub](https://img.shields.io/badge/pub-1.0.0-blue)](https://pub.dev/packages/account_selector)

Add the Package
```yaml
dependencies:
  not_paid: ^1.0.0
```

## How to use



Import the package in your dart file

```dart
import 'package:not_paid/not_paid.dart';
```
Wrap the widget which ever you want to fade out under the NotPaid widget. To Fade out the whole app just wrap your material app inside the NotPaid widget.
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NotPaid(
      // Due date after which the app fading starts.
      dueDate: DateTime(2020, 6, 1),
      // As this deadline day reaches the app completely fades away.
      deadlineDays: 10,
      child: MaterialApp(
        title: 'Not-Paid Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DemoPage(title: 'Not Paid Demo Page'),
      ),
    );
  }
}
```

### Required params

These are the basic params required by NotPaid widget.

For showAccountSelectorSheet

| Attribute           | Type   |
| -------------       | :-----:|
| dueDate             | DateTime  |
| deadlineDays        | int  |
| child               | Widget |


### Created & Maintained By

[Harpreet Singh](https://github.com/harpreetseera) 

[Damanpreet Singh](https://github.com/damanpreetsb) 

# License
```
Copyright 2020 Harpreet Singh & Damanpreet Singh

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```