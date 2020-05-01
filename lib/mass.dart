enum MassUnit { Kilogram, Gram, Pound, Ounce }

class Mass {
  MassUnit _unit;
  double _value;

  double get value {
    return _value;
  }

  MassUnit get unit {
    return _unit;
  }

  Mass(MassUnit unit, double value) {
    _unit = unit;
    _value = value;
  }

  static Mass fromOunce(double value) {
    return Mass(MassUnit.Ounce, value);
  }

  static Mass fromPound(double value) {
    return Mass(MassUnit.Pound, value);
  }

  static Mass fromGram(double value) {
    return Mass(MassUnit.Gram, value);
  }

  static Mass fromKilogram(double value) {
    return Mass(MassUnit.Kilogram, value);
  }

  Mass to(MassUnit unit) {
    switch (unit) {
      case MassUnit.Kilogram:
        return toKilogram();
      case MassUnit.Gram:
        return toGram();
      case MassUnit.Pound:
        return toPound();
      case MassUnit.Ounce:
        return toOunce();
    }
    return Mass(_unit, _value);
  }

  Mass toKilogram() {
    switch (_unit) {
      case MassUnit.Kilogram:
        return fromKilogram(_value);
      case MassUnit.Gram:
        return fromKilogram(_value / 1000);
      case MassUnit.Pound:
        return fromKilogram(_value / 2.205);
      case MassUnit.Ounce:
        return fromKilogram(_value / 35.274);
    }
    return Mass(_unit, _value);
  }

  Mass toGram() {
    switch (_unit) {
      case MassUnit.Kilogram:
        return fromGram(_value * 1000);
      case MassUnit.Gram:
        return fromGram(_value);
      case MassUnit.Pound:
        return fromGram(_value * 454);
      case MassUnit.Ounce:
        return fromGram(_value * 28.35);
    }
    return Mass(_unit, _value);
  }

  Mass toPound() {
    switch (_unit) {
      case MassUnit.Kilogram:
        return fromPound(_value * 2.205);
      case MassUnit.Gram:
        return fromPound(_value / 454);
      case MassUnit.Pound:
        return fromPound(_value);
      case MassUnit.Ounce:
        return fromPound(_value / 16);
    }
    return Mass(_unit, _value);
  }

  Mass toOunce() {
    switch (_unit) {
      case MassUnit.Kilogram:
        return fromOunce(_value * 35.274);
      case MassUnit.Gram:
        return fromOunce(_value / 28.35);
      case MassUnit.Pound:
        return fromOunce(_value * 16);
      case MassUnit.Ounce:
        return fromOunce(_value);
    }
    return Mass(_unit, _value);
  }

  static String massUnitToString(MassUnit unit) {
    switch (unit) {
      case MassUnit.Kilogram:
        return "kg";
      case MassUnit.Gram:
        return "g";
      case MassUnit.Pound:
        return "lb";
      case MassUnit.Ounce:
        return "oz";
    }
    return "";
  }

  @override
  String toString() {
    return _value.toStringAsExponential(2) + " " + massUnitToString(_unit);
  }
}
