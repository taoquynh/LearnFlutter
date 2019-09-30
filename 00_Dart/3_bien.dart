import 'dart:ffi';

main(){
  const i = 5; // khai báo hằng số
  var pi = 3.14; // khai báo biến số
  print('Tong cua 2 so: ${i} + ${pi} = ${i+pi}');

  // khai báo biến k có giá trị
  var a;
  // khi này giá trị của a là null
  // kiểu dữ liệu của a là kiểu dữ liệu của giá trị gán vào nó
  a = 'Today'; // khi này a là một string
  a = 5; // khi này a là một số
  print(a); // kết quả: 5

  // khởi tạo giá trị ban đầu cho biến
  var b = 5; // khi này b có kiểu int
  // b = 'a'; // lỗi: không thể gán cho b kiểu dữ liệu khác
  print(b); // kết quả: 5

  // khai báo và chỉ định kiểu dữ liệu cụ thể cho biến, 
  // khi chỉ định kiểu cụ thể mỗi khi gán dữ liệu vào biến thì giá trị phải cùng kiểu
  String  s = 'Đây là một chuỗi';
  int     number = 4;
  bool    isCheck = true;
  double  so = 3.2323;
  print('$s, $number, $isCheck, $so');

  // Trong trường hợp sử dụng biến mà biến đó không xét đến kiểu (chấp nhận gán vào nó nhiều loại kiểu) thì dùng từ khóa dynamic
  dynamic dev = 'Dev';
  dev = 3;
  dev = true;
  print(dev); 
}