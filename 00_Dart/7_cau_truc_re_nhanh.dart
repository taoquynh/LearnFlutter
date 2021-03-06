main() {
  // if ... eles
  
  // dạng 1 : 
  // if (biểu_thức) {
  //   do somthing
  //  }
  // ví dụ:
  var x = 20;
  if (20 % 2 == 0){
    print('$x là số chẵn');
  } else {
    print('$x là số lẻ');
  }
  /*
  dạng 2:
  if (biểu_thức) {
    //Viết lệnh chạy khi biểu_thức là true
  } else {
      //Viết lệnh chạy khi biểu thức là false
  }
  */
  /* 
  CÓ THỂ VIẾT NHIỀU LỆNH IF
  if (biểu_thức_1) {
      //..Các câu lệnh
  } else if (biểu_thức_2) {
      //Các câu lệnh
  } else {
      //Các câu lệnh
  }
  */
  // ví dụ:
  var a = 12;
  if (a == 0) {
    print('a bằng 0');
  } else if (a < 0) {
    print('a là số dương');
  } else {
    print('a là số âm');
  }

  // Switch case
  var t = 0;
  switch (t) {
    case 0:
      print('Trời nắng');
      break;
    case 1:
      print('Trời mưa');
      break;
    default:
      print('Không có giá trị nào');
  }
/*
  switch (biểu_thức) {
    case : giá_trị_1
      // Khối lệnh
      break;
    case : giá_trị_2
      //Khối lệnh
    break;

    default:
      //Khối lệnh mặc định
}
*/

  // vòng lặp for
  // đầy đủ 3 statement
  for (var i = 1; i <= 5; i++) {
    print(i);
  }

// bỏ qua statement1
  var i = 1;
  for (; i <= 5; i++) {
    print(i);
  }

// tương tự có thể bỏ qua statement2, 3
  var k = 0;
  for (;; k += 2) {
    if (k > 10) break;
    print(k);
  }

  // tương tự có thể bỏ qua statement2, 3
  for (;;) {
    if (k > 10){break;}
    k++;
    print('--$k');
  }

  // vòng lặp while
  var n = 0;
  while (n <= 5) {
    print(n);
    n++;
  }
  // vòng lặp do ... while
  var m = 20;
  do {
    print(m);
    m++;
  } while (m <= 25);
  // Vòng lặp do ... while khối lệnh luôn được thi hành ít nhất một lần

  // continue và break
  // Trong vòng lặp khi gặp continue; nó sẽ bỏ qua các lệnh còn lại và khởi tạo vòng lặp mới luôn.
  // Còn nếu gặp break; thì bỏ qua các lệnh còn lại đồng thời thoát khỏi vòng lặp.
  for (i = 0; i <= 70000; i++) {
    if (i == 5) {
      continue; //Khởi tạo vòng lặp mới luôn
    }
    print(i);
    if (i >= 7) {
      break; //Thoát lặp nếu i >=7
    }
  }

  // Lệnh continue còn dùng để nhảy đến một khối lệnh có nhãn bằng cú pháp
  // continue nhãn_khối_lệnh;

  // Lệnh break còn dùng để hủy thi hành khối lệnh bên ngoài có nhãn, với cú pháp:
  // break nhãn_khối_lệnh_ngoài;
}
