abstract class A {
  //Khai báo các thuộc tính
  var name = 'My Abstract Class';
  //Khai báo phương thức trừu tượng (chỉ có tên)
  void displayInfomation();
}

// Class A không thể dùng để tạo ra đối tượng, nhưng nó được lớp khác kế thừa
// Lớp con kế thừa bắt buộc phải định nghĩa nội dung cho phương thức trừu tượng bằng cách nạp chồng (@override).
// Ví dụ khai báo lớp B kế thừa lớp trừu tượng A
class B extends A {
  @override
  void displayInfomation() {
     print(this.name);
  }
}

// Ví dụ xây dựng lớp C triển khai từ lớp B bằng implements. 
// Vậy B sẽ là interface và trong C bắt buộc phải định nghĩa lại mọi thứ trong B
class C implements B {
  @override
  String name;

  @override
  void displayInfomation() {
      // ...
  }
}

main() {
  var i = B();
  i.displayInfomation();
}