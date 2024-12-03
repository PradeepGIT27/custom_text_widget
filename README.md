# custom_text_widget_pro

This Flutter plugin provides an API for querying information about an application package.

## Platform Support

| Android |  iOS  | MacOS |  Web  | Linux | Windows |
| :-----: | :---: | :---: | :---: | :---: | :-----: |
|✅|✅|✅|✅|✅|✅|

## Requirements

- Flutter >=3.19.0
- Dart >=3.3.0 <4.0.0
- iOS >=12.0
- MacOS >=10.14
- Android `compileSDK` 34
- Java 17
- Android Gradle Plugin >=8.3.0
- Gradle wrapper >=8.4

## Usage

You can use the PackageInfo to query information about the application package. This works both on
iOS and Android.

```dart
import 'package:custom_text_widget_pro/custom_text_widget_pro.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SampleCustomText extends StatelessWidget {
  const SampleCustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextWidget(
                text: "Normal Text",
                size: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: ClickableTextWidget(
                onTap: () => print("Hello Clickable Text"),
                text: "Clickable Text",
                size: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextWidget(
                text: "Normal Text with Underline",
                size: 16.0,
                underLine: true,
                underlineColor: Colors.green,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: RichTextWidget(textSpanList: [
              richTextSpan(
                text: 'Rich Text Span 1 ',
                size: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              richTextSpan(
                underLine: true,
                text: 'Rich Text Span 2 with tap function ',
                size: 20.0,
                color: Colors.green,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // call needed action after click here
                    print("Hello Clickable Rich Text");
                  },
              ),
              richTextSpan(
                text: 'Rich Text Span 3',
                size: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}



```
