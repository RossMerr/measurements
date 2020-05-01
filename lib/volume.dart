enum VolumeType {
  Milliliter,
  Liter,
  USfluidOunce,
  USlegalCup,
  USliquidPint,
  USLiquidQuart,
  USLiquidGallon,
  ImperialFluidOunce,
  ImperialCup,
  ImperialPint,
  ImperialQuart,
  ImperialGallon
}

class Volume {
  VolumeType _unit;
  double _value;

  double get value {
    return _value;
  }

  VolumeType get unit {
    return _unit;
  }

  Volume(VolumeType unit, double value) {
    _unit = unit;
    _value = value;
  }

  static Volume fromImperialGallon(double value) {
    return Volume(VolumeType.ImperialGallon, value);
  }

  static Volume fromImperialQuart(double value) {
    return Volume(VolumeType.ImperialQuart, value);
  }

  static Volume fromImperialPint(double value) {
    return Volume(VolumeType.ImperialPint, value);
  }

  static Volume fromImperialCup(double value) {
    return Volume(VolumeType.ImperialCup, value);
  }

  static Volume fromImperialFluidOunce(double value) {
    return Volume(VolumeType.ImperialFluidOunce, value);
  }

  static Volume fromUSLiquidGallon(double value) {
    return Volume(VolumeType.USLiquidGallon, value);
  }

  static Volume fromUSLiquidQuart(double value) {
    return Volume(VolumeType.USLiquidQuart, value);
  }

  static Volume fromUSliquidPint(double value) {
    return Volume(VolumeType.USliquidPint, value);
  }

  static Volume fromUSlegalCup(double value) {
    return Volume(VolumeType.USlegalCup, value);
  }

  static Volume fromUSfluidOunce(double value) {
    return Volume(VolumeType.USfluidOunce, value);
  }

  static Volume fromLiter(double value) {
    return Volume(VolumeType.Liter, value);
  }

  static Volume fromMilliliter(double value) {
    return Volume(VolumeType.Milliliter, value);
  }

  Volume to(VolumeType unit) {
    switch (unit) {
      case VolumeType.Milliliter:
        return toMilliliter();
      case VolumeType.Liter:
        return toLiter();
      case VolumeType.USfluidOunce:
        return toUSfluidOunce();
      case VolumeType.USlegalCup:
        return toUSlegalCup();
      case VolumeType.USliquidPint:
        return toUSliquidPint();
      case VolumeType.USLiquidQuart:
        return toUSLiquidQuart();
      case VolumeType.USLiquidGallon:
        return toUSLiquidGallon();
      case VolumeType.ImperialFluidOunce:
        return toImperialFluidOunce();
      case VolumeType.ImperialCup:
        return toImperialCup();
      case VolumeType.ImperialPint:
        return toImperialPint();
      case VolumeType.ImperialQuart:
        return toImperialQuart();
      case VolumeType.ImperialGallon:
        return toImperialGallon();
    }
    return Volume(_unit, _value);
  }

  Volume toMilliliter() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromMilliliter(_value);
      case VolumeType.Liter:
        return fromMilliliter(_value * 1000);
      case VolumeType.USfluidOunce:
        return fromMilliliter(_value * 29.574);
      case VolumeType.USlegalCup:
        return fromMilliliter(_value * 240);
      case VolumeType.USliquidPint:
        return fromMilliliter(_value * 473);
      case VolumeType.USLiquidQuart:
        return fromMilliliter(_value * 946);
      case VolumeType.USLiquidGallon:
        return fromMilliliter(_value * 3785);
      case VolumeType.ImperialFluidOunce:
        return fromMilliliter(_value * 28.413);
      case VolumeType.ImperialCup:
        return fromMilliliter(_value * 284);
      case VolumeType.ImperialPint:
        return fromMilliliter(_value * 568);
      case VolumeType.ImperialQuart:
        return fromMilliliter(_value * 1137);
      case VolumeType.ImperialGallon:
        return fromMilliliter(_value * 4546);
    }
    return Volume(_unit, _value);
  }

  Volume toLiter() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromLiter(_value / 1000);
      case VolumeType.Liter:
        return fromLiter(_value);
      case VolumeType.USfluidOunce:
        return fromLiter(_value / 33.814);
      case VolumeType.USlegalCup:
        return fromLiter(_value / 4.167);
      case VolumeType.USliquidPint:
        return fromLiter(_value / 2.113);
      case VolumeType.USLiquidQuart:
        return fromLiter(_value / 1.057);
      case VolumeType.USLiquidGallon:
        return fromLiter(_value * 3.785);
      case VolumeType.ImperialFluidOunce:
        return fromLiter(_value / 35.195);
      case VolumeType.ImperialCup:
        return fromLiter(_value / 3.52);
      case VolumeType.ImperialPint:
        return fromLiter(_value / 1.76);
      case VolumeType.ImperialQuart:
        return fromLiter(_value / 1.137);
      case VolumeType.ImperialGallon:
        return fromLiter(_value * 4.546);
    }
    return Volume(_unit, _value);
  }

  Volume toUSfluidOunce() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromUSfluidOunce(_value / 29.574);
      case VolumeType.Liter:
        return fromUSfluidOunce(_value * 33.814);
      case VolumeType.USfluidOunce:
        return fromUSfluidOunce(_value);
      case VolumeType.USlegalCup:
        return fromUSfluidOunce(_value * 8.115);
      case VolumeType.USliquidPint:
        return fromUSfluidOunce(_value * 16);
      case VolumeType.USLiquidQuart:
        return fromUSfluidOunce(_value * 32);
      case VolumeType.USLiquidGallon:
        return fromUSfluidOunce(_value * 128);
      case VolumeType.ImperialFluidOunce:
        return fromUSfluidOunce(_value / 128);
      case VolumeType.ImperialCup:
        return fromUSfluidOunce(_value / 13.323);
      case VolumeType.ImperialPint:
        return fromUSfluidOunce(_value / 6.661);
      case VolumeType.ImperialQuart:
        return fromUSfluidOunce(_value / 3.331);
      case VolumeType.ImperialGallon:
        return fromUSfluidOunce(_value * 1.201);
    }
    return Volume(_unit, _value);
  }

  Volume toUSlegalCup() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromUSlegalCup(_value / 240);
      case VolumeType.Liter:
        return fromUSlegalCup(_value * 4.167);
      case VolumeType.USfluidOunce:
        return fromUSlegalCup(_value / 8.115);
      case VolumeType.USlegalCup:
        return fromUSlegalCup(_value);
      case VolumeType.USliquidPint:
        return fromUSlegalCup(_value * 1.972);
      case VolumeType.USLiquidQuart:
        return fromUSlegalCup(_value * 3.943);
      case VolumeType.USLiquidGallon:
        return fromUSlegalCup(_value * 15.773);
      case VolumeType.ImperialFluidOunce:
        return fromUSlegalCup(_value / 8.447);
      case VolumeType.ImperialCup:
        return fromUSlegalCup(_value * 1.184);
      case VolumeType.ImperialPint:
        return fromUSlegalCup(_value * 2.368);
      case VolumeType.ImperialQuart:
        return fromUSlegalCup(_value * 4.736);
      case VolumeType.ImperialGallon:
        return fromUSlegalCup(_value * 18.942);
    }
    return Volume(_unit, _value);
  }

  Volume toUSliquidPint() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromUSliquidPint(_value / 473);
      case VolumeType.Liter:
        return fromUSliquidPint(_value * 2.113);
      case VolumeType.USfluidOunce:
        return fromUSliquidPint(_value / 16);
      case VolumeType.USlegalCup:
        return fromUSliquidPint(_value / 1.972);
      case VolumeType.USliquidPint:
        return fromUSliquidPint(_value);
      case VolumeType.USLiquidQuart:
        return fromUSliquidPint(_value * 2);
      case VolumeType.USLiquidGallon:
        return fromUSliquidPint(_value * 8);
      case VolumeType.ImperialFluidOunce:
        return fromUSliquidPint(_value / 16.653);
      case VolumeType.ImperialCup:
        return fromUSliquidPint(_value / 1.665);
      case VolumeType.ImperialPint:
        return fromUSliquidPint(_value * 1.201);
      case VolumeType.ImperialQuart:
        return fromUSliquidPint(_value * 2.402);
      case VolumeType.ImperialGallon:
        return fromUSliquidPint(_value * 9.608);
    }
    return Volume(_unit, _value);
  }

  Volume toUSLiquidQuart() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromUSLiquidQuart(_value / 946);
      case VolumeType.Liter:
        return fromUSLiquidQuart(_value * 1.057);
      case VolumeType.USfluidOunce:
        return fromUSLiquidQuart(_value / 32);
      case VolumeType.USlegalCup:
        return fromUSLiquidQuart(_value / 3.943);
      case VolumeType.USliquidPint:
        return fromUSLiquidQuart(_value / 2);
      case VolumeType.USLiquidQuart:
        return fromUSLiquidQuart(_value);
      case VolumeType.USLiquidGallon:
        return fromUSLiquidQuart(_value * 4);
      case VolumeType.ImperialFluidOunce:
        return fromUSLiquidQuart(_value / 33.307);
      case VolumeType.ImperialCup:
        return fromUSLiquidQuart(_value / 3.331);
      case VolumeType.ImperialPint:
        return fromUSLiquidQuart(_value / 1.665);
      case VolumeType.ImperialQuart:
        return fromUSLiquidQuart(_value * 1.201);
      case VolumeType.ImperialGallon:
        return fromUSLiquidQuart(_value * 4.804);
    }
    return Volume(_unit, _value);
  }

  Volume toUSLiquidGallon() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromUSLiquidGallon(_value / 3785);
      case VolumeType.Liter:
        return fromUSLiquidGallon(_value / 3.785);
      case VolumeType.USfluidOunce:
        return fromUSLiquidGallon(_value / 128);
      case VolumeType.USlegalCup:
        return fromUSLiquidGallon(_value / 15.773);
      case VolumeType.USliquidPint:
        return fromUSLiquidGallon(_value / 8);
      case VolumeType.USLiquidQuart:
        return fromUSLiquidGallon(_value / 4);
      case VolumeType.USLiquidGallon:
        return fromUSLiquidGallon(_value);
      case VolumeType.ImperialFluidOunce:
        return fromUSLiquidGallon(_value / 133);
      case VolumeType.ImperialCup:
        return fromUSLiquidGallon(_value / 13.323);
      case VolumeType.ImperialPint:
        return fromUSLiquidGallon(_value / 6.661);
      case VolumeType.ImperialQuart:
        return fromUSLiquidGallon(_value / 3.331);
      case VolumeType.ImperialGallon:
        return fromUSLiquidGallon(_value * 1.201);
    }
    return Volume(_unit, _value);
  }

  Volume toImperialFluidOunce() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromImperialFluidOunce(_value / 28.413);
      case VolumeType.Liter:
        return fromImperialFluidOunce(_value * 35.195);
      case VolumeType.USfluidOunce:
        return fromImperialFluidOunce(_value * 1.041);
      case VolumeType.USlegalCup:
        return fromImperialFluidOunce(_value * 8.447);
      case VolumeType.USliquidPint:
        return fromImperialFluidOunce(_value * 16.653);
      case VolumeType.USLiquidQuart:
        return fromImperialFluidOunce(_value * 33.307);
      case VolumeType.USLiquidGallon:
        return fromImperialFluidOunce(_value * 133);
      case VolumeType.ImperialFluidOunce:
        return fromImperialFluidOunce(_value);
      case VolumeType.ImperialCup:
        return fromImperialFluidOunce(_value * 10);
      case VolumeType.ImperialPint:
        return fromImperialFluidOunce(_value * 20);
      case VolumeType.ImperialQuart:
        return fromImperialFluidOunce(_value * 40);
      case VolumeType.ImperialGallon:
        return fromImperialFluidOunce(_value * 160);
    }
    return Volume(_unit, _value);
  }

  Volume toImperialCup() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromImperialCup(_value / 284);
      case VolumeType.Liter:
        return fromImperialCup(_value * 3.52);
      case VolumeType.USfluidOunce:
        return fromImperialCup(_value / 9.608);
      case VolumeType.USlegalCup:
        return fromImperialCup(_value / 1.184);
      case VolumeType.USliquidPint:
        return fromImperialCup(_value * 1.665);
      case VolumeType.USLiquidQuart:
        return fromImperialCup(_value * 3.331);
      case VolumeType.USLiquidGallon:
        return fromImperialCup(_value * 13.323);
      case VolumeType.ImperialFluidOunce:
        return fromImperialCup(_value / 10);
      case VolumeType.ImperialCup:
        return fromImperialCup(_value);
      case VolumeType.ImperialPint:
        return fromImperialCup(_value * 2);
      case VolumeType.ImperialQuart:
        return fromImperialCup(_value * 4);
      case VolumeType.ImperialGallon:
        return fromImperialCup(_value * 16);
    }
    return Volume(_unit, _value);
  }

  Volume toImperialPint() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromImperialPint(_value / 568);
      case VolumeType.Liter:
        return fromImperialPint(_value * 1.76);
      case VolumeType.USfluidOunce:
        return fromImperialPint(_value / 19.215);
      case VolumeType.USlegalCup:
        return fromImperialPint(_value / 2.368);
      case VolumeType.USliquidPint:
        return fromImperialPint(_value / 1.201);
      case VolumeType.USLiquidQuart:
        return fromImperialPint(_value * 1.665);
      case VolumeType.USLiquidGallon:
        return fromImperialPint(_value * 6.661);
      case VolumeType.ImperialFluidOunce:
        return fromImperialPint(_value / 20);
      case VolumeType.ImperialCup:
        return fromImperialPint(_value / 2);
      case VolumeType.ImperialPint:
        return fromImperialPint(_value);
      case VolumeType.ImperialQuart:
        return fromImperialPint(_value * 2);
      case VolumeType.ImperialGallon:
        return fromImperialPint(_value * 8);
    }
    return Volume(_unit, _value);
  }

  Volume toImperialQuart() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromImperialQuart(_value / 1137);
      case VolumeType.Liter:
        return fromImperialQuart(_value / 1.137);
      case VolumeType.USfluidOunce:
        return fromImperialQuart(_value / 38.43);
      case VolumeType.USlegalCup:
        return fromImperialQuart(_value / 4.736);
      case VolumeType.USliquidPint:
        return fromImperialQuart(_value / 2.402);
      case VolumeType.USLiquidQuart:
        return fromImperialQuart(_value / 1.201);
      case VolumeType.USLiquidGallon:
        return fromImperialQuart(_value * 3.331);
      case VolumeType.ImperialFluidOunce:
        return fromImperialQuart(_value / 40);
      case VolumeType.ImperialCup:
        return fromImperialQuart(_value / 4);
      case VolumeType.ImperialPint:
        return fromImperialQuart(_value / 2);
      case VolumeType.ImperialQuart:
        return fromImperialQuart(_value);
      case VolumeType.ImperialGallon:
        return fromImperialQuart(_value * 4);
    }
    return Volume(_unit, _value);
  }

  Volume toImperialGallon() {
    switch (_unit) {
      case VolumeType.Milliliter:
        return fromImperialGallon(_value / 4546);
      case VolumeType.Liter:
        return fromImperialGallon(_value / 4.546);
      case VolumeType.USfluidOunce:
        return fromImperialGallon(_value / 154);
      case VolumeType.USlegalCup:
        return fromImperialGallon(_value / 18.942);
      case VolumeType.USliquidPint:
        return fromImperialGallon(_value / 9.608);
      case VolumeType.USLiquidQuart:
        return fromImperialGallon(_value / 4.804);
      case VolumeType.USLiquidGallon:
        return fromImperialGallon(_value / 1.201);
      case VolumeType.ImperialFluidOunce:
        return fromImperialGallon(_value / 160);
      case VolumeType.ImperialCup:
        return fromImperialGallon(_value / 16);
      case VolumeType.ImperialPint:
        return fromImperialGallon(_value / 8);
      case VolumeType.ImperialQuart:
        return fromImperialGallon(_value / 4);
      case VolumeType.ImperialGallon:
        return fromImperialGallon(_value);
    }
    return Volume(_unit, _value);
  }

  static String volumeTypeToString(VolumeType unit) {
    switch (unit) {
      case VolumeType.Milliliter:
        return "ml";
      case VolumeType.Liter:
        return "l";
      case VolumeType.USfluidOunce:
        return "fl oz";
      case VolumeType.USlegalCup:
        return "cp";
      case VolumeType.USliquidPint:
        return "pt";
      case VolumeType.USLiquidQuart:
        return "qt";
      case VolumeType.USLiquidGallon:
        return "gal";
      case VolumeType.ImperialFluidOunce:
        return "fl oz";
      case VolumeType.ImperialCup:
        return "cp";
      case VolumeType.ImperialPint:
        return "pt";
      case VolumeType.ImperialQuart:
        return "qt";
      case VolumeType.ImperialGallon:
        return "gal";
    }
    return "";
  }

  @override
  String toString() {
    return _value.toStringAsExponential(2) + " " + volumeTypeToString(_unit);
  }
}
