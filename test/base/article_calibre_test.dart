import 'dart:convert';

import 'package:models_base/src/dummies/article_calibre.dart';
import 'package:models_base/utils.dart';
import 'package:models_base/common.dart' show StockUnit;
import 'package:test/test.dart';

void main() {
  test('ArticleCalibreDummy serialisation', () {
    final _json = ArticleCalibreDummy().toJson();
    final Map<String, dynamic> map = (json.decode(_json));

    final Map<String, dynamic> mapA = map['articles'][0];
    expect(mapA['id'] == 1, isTrue);
    expect(mapA['calibreId'] == 1, isTrue);
    expect(mapA['fullName'] == 'frometon forever', isTrue);
    expect(mapA['weight'] == 1, isTrue);
    expect(mapA['articleCode'] == 11, isTrue);
    expect(mapA['photo'] == 'photo', isTrue);
    expect(mapA['creationDate'] == WeebiDates.defaultDate.toIso8601String(),
        isTrue);
    expect(mapA['status'] == true, isTrue);

    expect(map['categories'].first == 'categories', isTrue);

    expect(StockUnit.unit == StockUnit.tryParse(map['stockUnit']), isTrue);

    expect(map['id'] == 1, isTrue);
    expect(map['title'] == 'frometon', isTrue);
    expect(map['status'] == true, isTrue);
    expect(map['photo'] == 'photo', isTrue);
    expect(map['barcode'] == 1, isTrue);
    expect(map['statusUpdateDate'] == WeebiDates.defaultDate.toIso8601String(),
        isTrue);
    expect(map['creationDate'] == WeebiDates.defaultDate.toIso8601String(),
        isTrue);
  });
}
