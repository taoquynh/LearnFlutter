import 'dart:collection';
enum UserGroup {
  guest,
  member,
  admin,
}

main() {
  // kiểu dữ liệu Set
  var s = Set(); // khởi tạo Set
  s.add('a'); // thêm phần tử
  s.remove('a'); // xoá phần từ
  s.contains('a'); // kiểm tra xem Set có chứa phần tử a không

  // su dungkiểu enum
  var user_group = UserGroup.admin;
  switch (user_group) {
    case UserGroup.admin:
      print('Quản trị hệ thống');
      break;
    case UserGroup.guest:
      print('Khách');
      break;
    default:
  }

  // kiểu Iterable
  var iterable = new Iterable.generate(
      100); //khởi tạo Iterable chứa 100 phần tử từ 0 - đến 99
  for (var item in iterable) {
    // duyệt
    print(item);
  }
  // hoặc duyệt bằng forEach()
  iterable.forEach((f) {
    print(f);
  });

  // kiểu queue
}
