main() {
  // toán tử số học
  // toán tử + - * / như bình thường
  // chia lấy phần nguyên 6 ~/ 5 = 1
  // chia lấy phần dư 6 % 4 = 2
  // ++ var ~ var = var + 1: Thêm 1 vào var, trong biểu thức việc tăng này được thực hiện trước.
  var a = 5;
  var c = 10 + (++a);  //a tăng thêm 1, a thành 6
  print(a);            //6
  print(c);            //16
  // xar + 1 ~ xar = xar + 1: Thêm 1 vào var, trong biểu thức việc tăng này được thực hiện sau.
  var b = 5;
  var d = 10 + (++b);  //Tính d với b = 5, sau đó mới tăng b
  print(b);            //6
  print(d);            //15
  // --var	var = var - 1. Bớt var đi 1, việc bớt này thực hiện trước trong biểu thức.
  // var--	var = var - 1. Bớt var đi 1, việc bớt này thực hiện sau trong biểu thức.

  // phép gán: sử dụng dấu =, +=, -=, *=, /

  // toán tử logic: ||, &&, !bieu_thuc
  // biểu thức điều kiện
  // bieu_thuc_dieu_kien ? bieu_thuc_1 : bieu_thuc_2 //Nếu điều kiện là đúng thì giá trị tính theo biểu_thức_1, ngược lại là biểu_thức_2
  
  // biểu_thức_1 ?? biểu_thức_2 //nếu biểu_thức_1 khác null thì lấy biểu_thức_1, ngược lại lấy giá trị từ biểu_thức_2

  // Một số toán tử trên lớp, đối tượng
  // []: truy cập phần tử mảng
  // . : truy cập phương thức, thuộc tính đối tượng
  // as: Chuyển kiểu (var as MyClass)
  // is: Kiểm tra kiểu (var is MyClass)
  // is!: Kiểm tra kiểu (var is! MyClass)
}
