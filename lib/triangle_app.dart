// triangle_app_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:triangle_app/triangle_app.dart';

// triangle_app.dart
String detectTriangle(num sideA, num sideB, num sideC) {
  final sides = [sideA, sideB, sideC];

  sides.sort();

  for (var side in sides) {
    if (side < 1) {
      throw Exception();
    }
  }

  if (sides[0] + sides[1] <= sides[2]) {
    throw Exception('Inequal Triangle');
  }

  if (sides[0] == sides[1] && sides[0] == sides[2]) {
    return "Segitiga Sama Sisi";
  }

  if (sides[0] == sides[1] || sides[1] == sides[2]) {
    return "Segitiga Sama Kaki";
  }
  return "Segitiga Sembarang";
}

void main() {
  group('Detect the triangle', () {
    test('Should throw Error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
    });
  });
}
