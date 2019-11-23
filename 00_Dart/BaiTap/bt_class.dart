/*
Xây dựng lớp Candidate (Thí sinh) gồm các thuộc tính: mã, tên, điểm thi Toán, Văn, Anh và các phương thức cần thiết.
Xây dựng lớp TestCandidate để kiểm tra lớp trên:
- Tạo ít nhất 3 đối tượng Candidate
- In ra thông tin về các thí sinh có tổng điểm lớn hơn 15
*/

class Candidate {
  int code;
  String name;
  double mathPoint;
  double literaturePoint;
  double englishPoint;

  Candidate(int code, String name, {double mathPoint = 0.0, literaturePoint = 0.0, englishPoint = 0.0}){
    this.code = code;
    this.name = name;
    this.mathPoint = mathPoint;
    this.literaturePoint = literaturePoint;
    this.englishPoint = englishPoint;
  }

  double tongDiem() => (mathPoint + literaturePoint + englishPoint);
}

void main(){
  var candidate1 = Candidate(1, 'A', mathPoint: 8.0, literaturePoint: 5.0, englishPoint: 4.0);
  var candidate2 = Candidate(2, 'B', mathPoint: 8.0, literaturePoint: 5.0);

  List<Candidate> candidates = new List();
  candidates.addAll([candidate1, candidate2]);

  candidates.forEach( (item){
    if (item.tongDiem() > 15.0){
      print('Mã code: ${item.code}, tên: ${item.name}');
    }
  });
}