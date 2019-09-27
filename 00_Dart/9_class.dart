main() {
  var product = Product(600, quantity: 1);
  product.showToTal();
  product.quantity = 2;
  product.showToTal();

  var iphone = Product.iphone(200, quantity: 2);
  iphone.showToTal();
  Product.showListStore();

  // Gọi đến hàm setter
  product.nameProduct = 'Galaxy';
  var info = product.nameProduct;
  print(info);

  var table = new Table(500);
  print(table.name);
  table.showToTal();

}

class Product {
  // Khai báo thuộc tính
  String manufacture = '';
  String name = '';
  var price;
  int quantity;

  // Khai báo hàm khởi tạo
  Product(var priced, {int quantity: 0}) {
    this.price = priced;
    this.quantity = quantity;
  }

  // Khai báo hàm khởi tạo có tên
  Product.iphone(var price, {int quantity: 0}) {
    this.price = price;
    this.quantity = quantity;
    this.manufacture = 'Iphone';
  }

  // Khai báo các phương thức
  calulateTotal() {
    return this.price * this.quantity;
  }

  showToTal() {
    var tong = this.calulateTotal();
    print('Tổng tiền là: $tong');
  }

  // hàm static
  // hàm này thuộc về lớp mà không thuộc về đối tượng triển khai từ lớp
  // tức là hàm này ở bất kì đâu cũng gọi được (không cần khởi tạo đối tượng, chỉ cần tên lớp)
  static showListStore(){
    print('Store 1 ...');
    print('Store 2 ...');
  }

  // hàm setter/getter 
  // setter gọi khi thực hiện gán
  // getter gọi khi truy cập
  // sử dụng từ khoá get trước một hàm k có tham số thì nó trở thành setter
  // sử dụng từ khoá set trước một hàm có tham số thì nó trở thành hàm getter
  // sử dụng đồng thời 2 hàm này thì nó đều có cùng tên
    //getter
  get nameProduct {
    return this.name;
  }

  //Hàm setter
  set nameProduct(name) {
    this.name = name;
    switch (this.name) {
      case 'Iphone 6':
        this.manufacture = "Apple";
      break;

      case 'Galaxy S6':
        this.manufacture = 'Samsung';
      break;

      default: this.manufacture = '';
    }
  }


  // nạp chồng toán tử
  Product operator + (Product p) => new Product(this.quantity + p.quantity);
}

// Tính kế thừa trong lớp
class Table extends Product {
  double length = 0;
  double width = 0;
  // hàm khởi tạo ở lớp con, bắt buộc phải gọi một hàm khởi tạo nào đó của lớp cha (sau dấu :)
  // đoạn supper(giatien, quantity:1) tương đương với hàm khởi tạo Product(giatien, quantity:1)
  Table(var giatien) : super(giatien, quantity: 1){
    // Khởi tạo lại lớp con, sau khi hàm tạo lớp cha chạy xong
    this.name = 'Bàn ăn';
  }

  // nạp chồng phương thức
  @override 
  showToTal() {
    print('Sản phẩm:' + this.name);
    // gọi đến phương thức ở lớp cha 
    super.showToTal();
  }
}
