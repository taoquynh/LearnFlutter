void main(){
  int soDien = 401;
  double tienDien = 0;

  if ( soDien > 0 && soDien <= 50){
    tienDien = soDien * 1.678;
  }else if ( soDien <= 100){
    tienDien = 50 * 1.678 + (soDien - 50) * 1.734;
  }else if (soDien <= 200){
    tienDien = 50 * 1.678 + 50 * 1.734 + (soDien - 100) * 2.014;
  }else if (soDien <= 300){
    tienDien = 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + (soDien - 200) * 2.536;
  } else if (soDien <= 400) {
    tienDien = 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + 100 * 2.536 + (soDien - 300) * 2.834;
  } else {
    tienDien = 50 * 1.678 + 50 * 1.734 + 100 * 2.014 + 100 * 2.536 + 100 * 2.834 + (soDien - 400) * 2.927;
  }
  print(tienDien);
}