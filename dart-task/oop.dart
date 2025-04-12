class Students {
  String name;
  int _age;
  String _favoriteLanguage;

  
  Students(this._favoriteLanguage, this.name, this._age);

  // Named constructor for guest student
  // Students.guest() {
  //   name = "Guest";
  //   age = 0;
  //   _favoriteLanguage = "Unknown";
  // }

  // Getter for favoriteLanguage
  String get favoriteLanguage => _favoriteLanguage;

  set favoriteLanguage(String newFavoriteLanguage) {

     if (newFavoriteLanguage.isNotEmpty && newFavoriteLanguage.length > 3) {
      _favoriteLanguage = newFavoriteLanguage;
    } else if (newFavoriteLanguage.isEmpty) {
      print('favoriteLanguage cannot be empty!');
    } else {
      print('favoriteLanguage is too short!');
    }
  }

  int get age => _age;

 set age (int newAge){
  if (newAge > 0) {
      _age = newAge;
    } else {
      print('Age must be positive! Ignoring invalid value.');
    }

 }
  void printDetails() {
    print("Name: $name, Age: $age, Favorite Language: $favoriteLanguage");
  }

 
  void calculateYearOfBirth() {
    int currentYear = DateTime.now().year;
    int yearOfBirth = currentYear - age;
    print("$name's year of birth: $yearOfBirth");
  }
}

class StudentManager {
  List<Students> students = [];

  
  void addStudent(Students student) {
    students.add(student);
  }


  void printAllStudents() {
    for (var student in students) {
      student.printDetails();
    }
  }
}

void main() {
 
  Students student = Students('ReactJS', 'Yaqoot',26);


  print("Current favorite language: ${student.favoriteLanguage}");

 
  student.favoriteLanguage = 'Dart';

  print("Updated favorite language to ${student.favoriteLanguage}");

  student.favoriteLanguage = '';

    print("Current age: ${student.age}");
  
  student.age = 0;

  student.printDetails();
  student.calculateYearOfBirth();
  


  // Students guestStudent = Students.guest();
  // guestStudent.printDetails();

  
  StudentManager manager = StudentManager();
  manager.addStudent(Students('React', 'Amro', 28));
  manager.addStudent(Students('CSS', 'Raneem', 24));

  print("All Students:");
  manager.printAllStudents();
}
