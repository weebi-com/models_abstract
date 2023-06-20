import 'dart:convert';

import 'package:models_base/src/dummies/article.dart';
import 'package:models_base/utils.dart';
import 'package:test/test.dart';

void main() {
  test('article', () {
    final _json = ArticleDummy().toJson();
    final Map<String, dynamic> map = (json.decode(_json));
    expect(map['id'] == 1, isTrue);
    expect(map['calibreId'] == 1, isTrue);
    expect(map['fullName'] == 'frometon forever', isTrue);
    // expect(map['price'] == 1000, isTrue);
    // expect(map['cost'] == 500, isTrue);
    expect(map['weight'] == 1, isTrue);
    expect(map['articleCode'] == 11, isTrue);
    expect(map['creationDate'] == WeebiDates.defaultDate.toIso8601String(),
        isTrue);
    expect(
        map['updateDate'] == WeebiDates.defaultDate.toIso8601String(), isTrue);
    expect(map['statusUpdateDate'] == WeebiDates.defaultDate.toIso8601String(),
        isTrue);
    expect(map['status'] == true, isTrue);
  });
}
