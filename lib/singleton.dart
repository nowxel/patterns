void main() {
  Test test1 = Test.getTestInstance();
  Test test2 = Test.getTestInstance();
  print(test1 == test2);
}

class Test{
  static Test test;

  Test._();

  static Test getTestInstance() {
    if(test == null){
      test = Test._();
    }
    return test;
  }
}