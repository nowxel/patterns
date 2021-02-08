void main() {
  final Singleton singleton1 = Singleton.getInstance();
  final Singleton singleton2 = Singleton.getInstance();
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

