//Parent class
class Car{

  String type;
  String year;

  Car(this.type, this.year);

  void carType(){
    print("Type is: $type");
  }

  void carYear(){
    print("Make year is: $year");
  }
}

//child class
class CarChild extends Car{
  
  String model;

  CarChild(String type, String year, this.model) : super(type, year);

  void carModel(){
    print("Model is : $model");
  }
}

void main(){
  final carChild = CarChild("BMW", "2023", "X5");

  carChild.carType();
  carChild.carYear();
  carChild.carModel();

}
