class Animal {
  String name;
  int feed;

  Animal(String name, int feed){
    this.name = name;
    this.feed = feed;
  }
}

void main(){
  Animal cat = Animal('Cat', 4);
  var dog = Animal('Dog', 4);
  var bird = Animal('Bird', 2);

  print(cat.name);
  print(bird.feed);

  List<Animal> animals = List();
  animals.addAll([cat, dog, bird]);

  // duyệt mảng animals
  // c1:
  var i = 0;
  for (i; i < animals.length; i++){
    var item = animals[i];
    print('${item.name} - ${item.feed}');
  }

  // c2:
  for (var item in animals){
    print('${item.name} - ${item.feed}');
  }

  // c3: 
  animals.forEach( (item) {
    print('${item.name} - ${item.feed}');
  });
}