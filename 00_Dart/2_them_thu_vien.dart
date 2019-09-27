// nạp thư viện từ hệ thống
import 'dart:math';
// nạp thư viện là file mình tạo
import '2.1_banner.dart';

// định nghĩa một hàm tính tổng 2 số 
sumInt(int a, int b) {
  // return a + b;
  // dart không bị ảnh hưởng bởi khoảng trắng
  return 
          a
              +


              b;
}

// main() là hàm chạy đầu tiên (bắt buộc), hàm main có thể có tham số truyền vào hoặc không
main() {
  var tong;
  var a = 10;

  // Gọi hàm sumInt()
  tong = sumInt(a, 20);
  banner();
  print('Tổng là: $tong');

  var sqrtValue = sqrt(tong);
  print('Căn bậc 2 của $tong là $sqrtValue');
  banner();
}