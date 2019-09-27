import '2_them_thu_vien.dart' as prefix0;

main() {
  var x = tinhtong(9, 3, 2);
  print(x);

  var y = nhan2So(4, 5);
  print(y);

  var sum1 = sumInt(1);
  print(sum1);

  var sum2 = sumInt(1, c: 10);
  print(sum2);
  
  var sum3 = sumInt(1, b: 10, c: 2);
  print(sum3);

  print(tinhTong(1));      
  print(tinhTong(1,2));    
  print(tinhTong(1,2,3));   

  print(tinhChuVi(3, 2, 1));
}

// khai báo hàm , định nghĩa kiểu trả về
double tinhtong(var a, double b, double c) {
  return a + b + c;
}

// khai báo hàm, không định nghĩa kiểu trả về
nhan2So(var a, int b){
  return a * b;
}

// hàm với tham số mặc định
// nghĩa là khi gọi hàm mà thiếu giá trị cho tham số đó, thì nó sẽ nhận mặc định
sumInt(var a, {double b:1, double c:2}){
  return a + b + c;
}

// hàm với tham số tuỳ chọn
// nếu khi gọi hàm không có tham số này thì nó nhận giá trị null
tinhTong(var a, [double b, double c]) {
   var tong = a;
   if (b != null){
    tong += b;
   }

   tong += (c!=null) ?  c: 0;
   return tong;
}

// viết gọn hàm
tinhChuVi(var a, var b, var c) => a + b +c;

// hàm ẩn danh (lambda/closure)
// (var a, var b) {
//     return a + b;
// };

//Có thể dùng ký hiệu mũi tên  () => {}
// (var a, var b) => {
//     return a + b;
// }

//Nếu chỉ có 1 biểu thức trả về như trên có thể viết gọn hơn
// (var a, var b) => (a + b);

// Khai báo trên là hàm ẩn danh, nhưng để sử dụng nó thì ra lệnh cho nó chạy luôn hoặc gán nó vào một biến rồi dùng biến gọi hàm.
//Khai báo xong chạy luôn
var x = (var a, var b) {
    return a + b;
}(5,6);

// print(x);

//Gán hàm ẩn danh vào biến ham, rồi dùng nó chạy
// var ham = (var a, var b) {
//     return a + b;
// };

// print(ham(10,11)); 

// Hàm ẩn danh rất tiện dụng để làm tham số (callback) trong các hàm khác, thậm chí khai báo luôn một ẩn danh ở tham số hàm
// f1(var a, var b, var printmessage) {
//      var c = a + b;
//      printmessage(c);
// }


// f1(1, 2, (x) { print('Tổng là: $x');});         //Tổng là: 3
// f1(1, 2, (z) => print('SUM = $z')); 