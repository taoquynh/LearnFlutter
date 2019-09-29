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
