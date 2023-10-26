//Interface
abstract class Instructor {
  void Teach();
}

//Abstract
abstract class Student {
  void Study();
  void Present();
}

class InstructorOne implements Instructor {
  @override
  void Teach(){
    print("Inst is teaching");
  }
  
}

class Students extends Student {

  @override
  void Study(){
    print("Std is studying");
  }
  
  @override
  void Present() {
    // TODO: implement Present
  }

}

void main() {
  final inst = InstructorOne();
  final std = Students();

  inst.Teach();
  std.Study();
}
