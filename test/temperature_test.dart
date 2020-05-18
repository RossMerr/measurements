import '../lib/temperature.dart';
import "package:test/test.dart";

void main() {
  group("toCelsius", () {
    test("Celsius to Celsius", () {
      var exptected = Temperature.fromCelsius(10);
      var actual = Temperature.fromCelsius(10).toCelsius();
      expect(actual.toString(), equals(exptected.toString()));
    });
    test("Fahrenheit to Celsius", () {
      var exptected = Temperature.fromCelsius(10);
      var actual = Temperature.fromFahrenheit(50).toCelsius();
      expect(actual.toString(), equals(exptected.toString()));
    });
    test("Kelvin to Celsius", () {
      var exptected = Temperature.fromCelsius(10);
      var actual = Temperature.fromKelvin(283.15).toCelsius();
      expect(actual.toString(), equals(exptected.toString()));
    });
  });


  group("toFahrenheit", () {
    test("Celsius to Fahrenheit", () {
      var exptected = Temperature.fromFahrenheit(10);
      var actual = Temperature.fromCelsius(-12.22).toFahrenheit();
      expect(actual.toString(), equals(exptected.toString()));
    });
    test("Fahrenheit to Fahrenheit", () {
      var exptected = Temperature.fromFahrenheit(10);
      var actual = Temperature.fromFahrenheit(10).toFahrenheit();
      expect(actual.toString(), equals(exptected.toString()));
    });
    test("Kelvin to Fahrenheit", () {
      var exptected = Temperature.fromFahrenheit(10);
      var actual = Temperature.fromKelvin(260.928).toFahrenheit();
      expect(actual.toString(), equals(exptected.toString()));
    });
  });

  group("toKelvin", () {
    test("Celsius to Kelvin", () {
      var exptected = Temperature.fromKelvin(10);
      var actual = Temperature.fromCelsius(-263.15).toKelvin();
      expect(actual.toString(), equals(exptected.toString()));
    });
    test("Fahrenheit to Kelvin", () {
      var exptected = Temperature.fromKelvin(10);
      var actual = Temperature.fromFahrenheit(-441.67).toKelvin();
      expect(actual.toString(), equals(exptected.toString()));
    });
    test("Kelvin to Kelvin", () {
      var exptected = Temperature.fromKelvin(10);
      var actual = Temperature.fromKelvin(10).toKelvin();
      expect(actual.toString(), equals(exptected.toString()));
    });
  });
}