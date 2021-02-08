void main() {
  final singleton1 = Singleton._instance;
  final singleton2 = Singleton._instance;

  print(singleton1 == singleton2);

}

class Singleton {
  static Singleton _instance;

  Singleton._internal();

  static Singleton getInstance() {
    if (_instance == null) {
      _instance = Singleton._internal();
    }

    return _instance;
  }
}

