void main() {
  final Car car = Car();
  print(car);
}

class Car{}

class Manual {}


abstract class Builder {
  reset();
  setSeats();
  setEngine();
  setTripComputer();
  setGPS();
}

class CarBuilder implements Builder{

  var _car;

  CarBuilder({Car car}){
    car = _car;
  }

  @override
  reset() {
    this._car = Car();
  }

  @override
  setEngine() {
    this._car = Car();
  }

  @override
  setGPS() {
    this._car = Car();
  }

  @override
  setSeats() {
    this._car = Car();
  }

  @override
  setTripComputer() {
    this._car = Car();
  }

}

class CarManualBuilder implements Builder {

  var _manual;

  CarManualBuilder({Manual manual}){
    manual = _manual;
  }

  @override
  reset() {
    this._manual = Manual();
  }

  @override
  setEngine() {
    this._manual = Manual();
  }

  @override
  setGPS() {
    this._manual = Manual();
  }

  @override
  setSeats() {
    this._manual = Manual();
  }

  @override
  setTripComputer() {
    this._manual = Manual();
  }

}

class Director {

  var _builder;

  Director({Builder builder}){
    builder = _builder;
  }

  setBuilder(){
    this._builder = Builder;
  }

  constructSportsCar() {
    _builder.reset();
    _builder.setSeats(2);
    _builder.setEngine();
    _builder.setTripComputer(true);
    _builder.setGPS(true);
  }

}
