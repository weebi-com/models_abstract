import 'package:models_base/src/base/tax_base.dart';

class TaxDummy extends TaxAbstract {
  TaxDummy()
      : super(
          id: '1',
          name: 'noTax',
          percentage: 0.0,
        );
}
