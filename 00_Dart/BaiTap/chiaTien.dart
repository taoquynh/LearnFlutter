
class Team {
  String name;
  double tienDongVao;
  double percent;
  double tienCuoiCung = 0.0;

  Team(String name, double tienDongVao, {double percent = 1}){
    this.name = name;
    this.tienDongVao = tienDongVao;
    this.percent = percent;
  }
}

void main(){
  List<Team> teams = new List();
  Team team1 = Team('Hieu', 300.000, percent: 1);
  Team team2 = Team('Lan', 500.000,);
  var team3 = Team('Long', 900.000, percent: 0.5);
  teams.addAll([team1, team2, team3]);

  double x = 0;
  double tongTien = 0;

  teams.forEach( (item){
    tongTien += item.tienDongVao;
    x += item.percent;
  });

  teams.forEach( (item){
    item.tienCuoiCung = (tongTien / x) * item.percent - item.tienDongVao;
  });

  teams.forEach( (item){
    print('${item.name} - ${ item.tienCuoiCung > 0 ? 'tiền phải đóng thêm' : 'tiền được nhận lại'} ${item.tienCuoiCung > 0 ? item.tienCuoiCung : item.tienCuoiCung * -1}');
  });

}