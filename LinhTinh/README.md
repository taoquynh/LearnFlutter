# Một số mẹo, thủ thuật

# Một số thuộc tính quan trọng

## Thuộc tính làm cho chiều cao cột dãn theo nội dung (thuộc tính của Column)
```
mainAxisSize: MainAxisSize.min
```

## Tính kích thước thiết bị
```
double widthScreen = MediaQuery.of(context).size.width;
double heightScreen = MediaQuery.of(context).size.height;
```

## Xoay màn hình
```
@override
dispose(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  super.dispose();
}
```

## Parse JSON - utf8
```
.fromJson(json.decode(utf8.decode(response.bodyBytes)));
```

## Plaform iOS - Android
```
import 'dart:io' show Platform;

if (Platform.isAndroid) {
  // Android-specific code
} else if (Platform.isIOS) {
  // iOS-specific code
}
```

## encode UTF-8
```
&encode=UTF-8
```
