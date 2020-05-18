enum TemperatureUnit { Celsius, Fahrenheit, Kelvin }

const String DegreeSign = "°";

class Temperature {
  TemperatureUnit _unit;
  double _value;

  double get value {
    return _value;
  }

  TemperatureUnit get unit {
    return _unit;
  }

  Temperature(TemperatureUnit unit, double value) {
    _unit = unit;
    _value = value;
  }

  static Temperature fromCelsius(double value) {
    return Temperature(TemperatureUnit.Celsius, value);
  }

  static Temperature fromFahrenheit(double value) {
    return Temperature(TemperatureUnit.Fahrenheit, value);
  }

  static Temperature fromKelvin(double value) {
    return Temperature(TemperatureUnit.Kelvin, value);
  }

  Temperature to(TemperatureUnit unit) {
    switch (unit) {
      case TemperatureUnit.Celsius:
        return toCelsius();
      case TemperatureUnit.Fahrenheit:
        return toFahrenheit();
      case TemperatureUnit.Kelvin:
        return toKelvin();
    }
    return Temperature(_unit, _value);
  }

  Temperature toCelsius() {
    switch (_unit) {
      case TemperatureUnit.Fahrenheit:
        return fromCelsius((_value - 32) * 5 / 9);
      case TemperatureUnit.Kelvin:
        return fromCelsius(_value - 273.15);
      default:
        return fromCelsius(_value);
    }
  }

  Temperature toFahrenheit() {
    switch (_unit) {
      case TemperatureUnit.Fahrenheit:
        return fromFahrenheit(_value);
      case TemperatureUnit.Kelvin:
        return fromFahrenheit((value -273.15) * 9/5 + 32);
      default:
        return fromFahrenheit((_value *9 / 5) + 32);
    }
  }

  Temperature toKelvin() {
    switch (_unit) {
      case TemperatureUnit.Fahrenheit:
        return fromKelvin((_value - 32) * 5/ 9 + 273.15);
      case TemperatureUnit.Kelvin:
        return fromKelvin(_value);
      default:
        return fromKelvin(_value + 273.15);
    }
  }

  static String temperatureUnitToString(TemperatureUnit unit) {
    switch (unit) {
      case TemperatureUnit.Celsius:
        return "C";
      case TemperatureUnit.Fahrenheit:
        return "F";
      case TemperatureUnit.Kelvin:
        return "K";
    }

    return "";
  }

  @override
  String toString() {
    if (_unit == TemperatureUnit.Kelvin) {
      return _value.toStringAsFixed(2) +
          " " +
          temperatureUnitToString(_unit);
    }
    return _value.toStringAsFixed(2) +
        " " +
        DegreeSign +
        temperatureUnitToString(_unit);
  }
}
