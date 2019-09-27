import 'dart:math';

main() {
  //Ví dụ
  // Cách khai báo này gọi là hằng số lúc biên dịch, giá trị của nó phải là cụ thể ngay lúc viết code.
  const dow_0     = 'Sunday';
  const dow_1     = 'Monday';
  const minutes   = 24 * 60;

  print('$dow_0, $dow_1, $minutes');

  // hằng số final
  // hằng số final chỉ được gán một lần duy nhất, gán lần thứ 2 sẽ lỗi (trước khi sử dụng phải có 1 lần gán). 
  // Nó gọi là hằng số lúc chạy, giá trị hằng số này có thể khác nhau mỗi lần chạy
  // Ví dụ:
  var so_ngau_nhien = new Random().nextInt(500);
  final a = so_ngau_nhien * 2;
  print('$so_ngau_nhien, $a');
}