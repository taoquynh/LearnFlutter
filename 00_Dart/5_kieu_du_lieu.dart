import 'dart:isolate';

main() {
  // int
  // biểu diễn các giá trị số nguyên
  int number = 100;
  // ép kiểu string thành int
  int numberString = int.parse("200");
  print('int: $number, $numberString');

  // double
  // biểu diễn giá trị số thực 64bit
  double numDou = 100; //100.0
  double numDou2 = 54.32;
  var numDou3 = 32.23;
  // ép kiểu string thành double
  double numDou4 = double.parse("23.98");

  double a = 10.1;
  int b = a.toInt();
  String c = (a + b).toString();
  print("double: $c");

  // String
  // Biểu diễn chuỗi ký tự Unicode(UTF-16).
  // Nó được nhập vào trong cặp nháy đơn '' hoặc nháy kép "".
  // Dùng ký hiệu \", \' để biểu diễn ký tự ', " trong chuỗi
  print('Chuỗi sử dụng dấu \'\' nháy đơn');
  print("Chuỗi sử dụng dấu \"\" nháy kép");
  // Để nối các chuỗi lại với nhau dùng toán tử +, kiểm tra hai chuỗi giống nhau không dùng ==
  String s1 = "S1";
  String s2 = "S2";
  String s3 = s2 + '_' + s1;
  print(s3);
  // Muốn nhập chuỗi trên nhiều dòng, dùng cú pháp sau (các dòng nằm giữa cặp ... hoặc ***);
  String s5 = '''
  Các dòng
  chữ trong chuỗi s5
  ''';

  print(s5);

  //Hoặc
  String s6 = """
  Các dòng
  chữ trong chuỗi s6
  """;
  print(s6);
  //Có thể chèn một biến hoặc một biểu thức vào chuỗi bằng cách ký hiệu $tên_biến, ${biểu thức giá trị}
  var e = 10;
  var f = 20;

  String kq = "Hai số $e, $f có tổng ${e + f}";
  print(kq);

  // bool
  // Biểu diễn logic đúng / sai với hai giá trị true và false.
  bool found = true;

  if (found) {
    //Do something
  }

  // Mảng (List)
  var dow = ['T2', 'T3', 'T4'];
  // đếm phần tử của list
  print(dow.length);
  print(dow[1]);
  dow[2] = 'T5';
  print(dow[2]);
  dow.add('T4');
  print(dow);

  var lists = new List(5);
  lists[0] = 3;
  lists[1] = 2;
  lists[2] = 4;
  lists[3] = 0;
  lists[4] = 9;
  print(lists);
  // phần tử đầu tiên
  print(lists.first);
  // print(lists.last);
  // list rỗng
  print(lists.isEmpty);
  // list có phần tử
  print(lists.isNotEmpty);
  // đảo list
  print(lists.reversed);
  // list 1 phần tử
  var lst = new List();
  // thêm 1 phần tử
  // fix cứng thì k thêm được phần tử
  // lst.add('3');
  // thêm nhiều phần tử
  // lists.addAll([3, 2, 9, 3]);
  // single: mục đích kiểm tra nếu danh sách chỉ có một yếu tố thì trả về nó
  print('$lst.single single');
  // replaceRange: thay thế một đoạn giá trị trong List
  lists.replaceRange(0, 2, [3, 0, 5]);
  // xoá 1 giá trị trong mảng
  lists.remove(5);
  // xoá 1 phần tử theo index trong mảng
  lists.removeAt(2);
  // xoá theo một đoạn index
  lists.removeRange(1, 2);
  // xoá toàn bộ phần tử
  lists.clear();

  // Map
  // Map cũng lưu tập hợp các giá trị
  // Map lưu dữ liệu theo cặp key: value
  var capitals = {'VietNam': 'HaNoi', 'TrungQuoc': 'BacKinh', 'Japan': 'Tokyo'};
  print(capitals);

  var waters = new Map();
  waters['nuoc khoang'] = 'Lavie';
  waters['nuoc ngot'] = 'Sprite';
  print(waters);
  // Map cũng có các thuộc tính length, isEmpty, isNotEmpty

  Map m = {'name': 'Tom', 'Id': 'E1001'};
  print('Map :${m}');
  // thêm phần tử vào map
  m.addAll({'dept': 'HR', 'email': 'tom@xyz.com'});
  print('${m}');

  // Map.clear() - xoá toàn bộ phần tử
  // Map.remove(Object Key) - xoá phần tử theo key
  // Map.forEach(void f(K key, V value)) - lặp qua mỗi phần tử trong map theo cặp giá trịị
  capitals.forEach((k,v) => print('${k}: ${v}')); 
}
