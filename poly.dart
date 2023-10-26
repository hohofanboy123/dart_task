//Parent class
class Buffet {
  void area() {
    print("This Buffet is devided into 3 parts");
  }
}

//Child class 1
class Appetizers extends Buffet {
  @override
  void area() {
    print("Appetizers");
  }
}

//Child class 2
class MainCourse extends Buffet {
  @override
  void area() {
    print("Main course");
  }
}

//Child class 3
class Desserts extends Buffet {
  @override
  void area() {
    print("Desserts");
  }
}

void main() {

  Buffet buffet = Buffet();
  Appetizers appetizers = Appetizers();
  MainCourse mainCourse = MainCourse();
  Desserts desserts = Desserts();

  buffet.area();
  appetizers.area();
  mainCourse.area();
  desserts.area();
}
