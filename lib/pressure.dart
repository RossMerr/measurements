enum PressureType { Torr, Bar, Pascal, PoundForcePerSquareInch }

class Pressure {
  PressureType _unit;
  double _value;

  double get value {
    return _value;
  }

  PressureType get unit {
    return _unit;
  }

  Pressure(PressureType unit, double value) {
    _unit = unit;
    _value = value;
  }

  static Pressure fromTorr(double value) {
    return Pressure(PressureType.Torr, value);
  }

  static Pressure fromBar(double value) {
    return Pressure(PressureType.Bar, value);
  }

  static Pressure fromPascal(double value) {
    return Pressure(PressureType.Pascal, value);
  }

  static Pressure fromPoundForcePerSquareInch(double value) {
    return Pressure(PressureType.PoundForcePerSquareInch, value);
  }

  Pressure to(PressureType unit) {
    switch (unit) {
      case PressureType.Torr:
        return toTorr();
      case PressureType.Bar:
        return toBar();
      case PressureType.Pascal:
        return toPascal();
      case PressureType.PoundForcePerSquareInch:
        return toPoundForcePerSquareInch();
    }
    return Pressure(_unit, _value);
  }

  Pressure toTorr() {
    switch (_unit) {
      case PressureType.Torr:
        return fromTorr(_value);
      case PressureType.Bar:
        return fromBar(_value * 750);
      case PressureType.Pascal:
        return fromPascal(_value / 133);
      case PressureType.PoundForcePerSquareInch:
        return fromPoundForcePerSquareInch(_value * 51.715);
    }
    return Pressure(_unit, _value);
  }

  Pressure toBar() {
    switch (_unit) {
      case PressureType.Torr:
        return fromTorr(_value / 750);
      case PressureType.Bar:
        return fromBar(_value);
      case PressureType.Pascal:
        return fromPascal(_value / 100000);
      case PressureType.PoundForcePerSquareInch:
        return fromPoundForcePerSquareInch(_value / 14.504);
    }
    return Pressure(_unit, _value);
  }

  Pressure toPascal() {
    switch (_unit) {
      case PressureType.Torr:
        return fromTorr(_value * 133);
      case PressureType.Bar:
        return fromBar(_value * 100000);
      case PressureType.Pascal:
        return fromPascal(_value);
      case PressureType.PoundForcePerSquareInch:
        return fromPoundForcePerSquareInch(_value * 6895);
    }
    return Pressure(_unit, _value);
  }

  Pressure toPoundForcePerSquareInch() {
    switch (_unit) {
      case PressureType.Torr:
        return fromTorr(_value / 51.715);
      case PressureType.Bar:
        return fromBar(_value * 14.504);
      case PressureType.Pascal:
        return fromPascal(_value / 6895);
      case PressureType.PoundForcePerSquareInch:
        return fromPoundForcePerSquareInch(_value);
    }
    return Pressure(_unit, _value);
  }

  static String pressureTypeToString(PressureType unit) {
    switch (unit) {
      case PressureType.Torr:
        return "Torr";
      case PressureType.Bar:
        return "bar";
      case PressureType.Pascal:
        return "Pa";
      case PressureType.PoundForcePerSquareInch:
        return "psi";
    }
    return "";
  }

  @override
  String toString() {
    return _value.toStringAsExponential(2) + " " + pressureTypeToString(_unit);
  }
}
