import 'dart:convert';

class Country {
  final String code2Letters;

  const Country._(this.code2Letters);

  @override
  String toString() {
    return name;
  }

  static const Country emptyCountry = Country._('');

  factory Country.code2Letters(String code2Letters) {
    if (code2Letters.isNotEmpty &&
        countriesFrench.keys.any((element) => element == code2Letters) ==
            false) {
      throw 'unknown country';
    } else if (code2Letters.isEmpty) {
      return Country.emptyCountry;
    } else {
      return Country._(code2Letters);
    }
  }

  String get name => code2Letters.isEmpty
      ? ''
      : countriesFrench.entries
          .firstWhere((element) => element.key == code2Letters)
          .value;

  static bool isRealCountry(String val) => countriesFrench.values
      .any((element) => element.toLowerCase() == val.toLowerCase());

  static String findCode2Letters(String val) => Country.countriesFrench.entries
      .firstWhere((element) => element.value.toLowerCase() == val.toLowerCase())
      .key;

  static List<String> getSuggestions(String query) => List.empty(growable: true)
    ..addAll(countriesFrench.values)
    ..retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));

  //ISO 3166 alpha-2
  static const Map<String, String> countriesFrench = {
    'AX': 'Îles Åland',
    'AL': 'Albanie',
    'DZ': 'Algérie',
    'AS': 'Samoa américaines',
    'AD': 'Andorre',
    'AO': 'Angola',
    'AI': 'Anguilla',
    'AQ': 'Antarctique',
    'AG': 'Antigua-et-Barbuda',
    'AR': 'Argentine',
    'AM': 'Arménie',
    'AW': 'Aruba',
    'AU': 'Australie',
    'AT': 'Autriche',
    'AZ': 'Azerbaïdjan',
    'BS': 'Bahamas',
    'BH': 'Bahreïn',
    'BD': 'Bangladesh',
    'BB': 'Barbade',
    'BY': 'Biélorussie',
    'BE': 'Belgique',
    'BZ': 'Belize',
    'BJ': 'Bénin',
    'BM': 'Bermudes',
    'BT': 'Bhoutan',
    'BO': 'Bolivie',
    'BA': 'Bosnie-Herzégovine',
    'BW': 'Botswana',
    'BV': 'Île Bouvet',
    'BR': 'Brésil',
    'VG': 'British Virgin Islands',
    'IO': "Territoire britannique de l'Océan Indien",
    'BN': 'Brunei Darussalam',
    'BG': 'Bulgarie',
    'BF': 'Burkina Faso',
    'BI': 'Burundi',
    'KH': 'Cambodge',
    'CM': 'Cameroun',
    'CA': 'Canada',
    'CV': 'Cap-Vert',
    'KY': 'Iles Cayman',
    'CF': 'République centrafricaine',
    'TD': 'Tchad',
    'CL': 'Chili',
    'CN': 'Chine',
    'HK': 'Hong Kong',
    'MO': 'Macao',
    'CX': 'Île Christmas',
    'CC': 'Îles Cocos',
    'CO': 'Colombie',
    'KM': 'Comores',
    'CG': 'République du Congo',
    'CD': 'République démocratique du Congo',
    'CK': 'Îles Cook',
    'CR': 'Costa Rica',
    'CI': "Côte d'Ivoire",
    'HR': 'Croatie',
    'CU': 'Cuba',
    'CY': 'Chypre',
    'CZ': 'République tchèque',
    'DK': 'Danemark',
    'DJ': 'Djibouti',
    'DM': 'Dominique',
    'DO': 'République dominicaine',
    'EC': 'Équateur',
    'EG': 'Égypte',
    'SV': 'Salvador',
    'GQ': 'Guinée équatoriale',
    'ER': 'Érythrée',
    'EE': 'Estonie',
    'ET': 'Éthiopie',
    'FK': 'Îles Falkland',
    'FO': 'Îles Féroé',
    'FJ': 'Fidji',
    'FI': 'Finlande',
    'FR': 'France',
    'GF': 'Guyane française',
    'PF': 'Polynésie française',
    'TF': 'Terres australes et antarctiques françaises',
    'GA': 'Gabon',
    'GM': 'Gambie',
    'GE': 'Géorgie',
    'DE': 'Allemagne',
    'GH': 'Ghana',
    'GI': 'Gibraltar',
    'GR': 'Grèce',
    'GL': 'Groenland',
    'GD': 'Grenade',
    'GP': 'Guadeloupe',
    'GU': 'Guam',
    'GT': 'Guatemala',
    'GG': 'Guernesey',
    'GN': 'Guinée',
    'GW': 'Guinée-Bissau',
    'GY': 'Guyane',
    'HT': 'Haïti',
    'HM': 'Îles Heard-et-MacDonald',
    'VA': 'Saint-Siège (Vatican)',
    'HN': 'Honduras',
    'HU': 'Hongrie',
    'IS': 'Islande',
    'IN': 'Inde',
    'ID': 'Indonésie',
    'IR': 'Iran',
    'IQ': 'Irak',
    'IE': 'Irlande',
    'IM': 'Ile de Man',
    'IL': 'Israël',
    'IT': 'Italie',
    'JM': 'Jamaïque',
    'JP': 'Japon',
    'JE': 'Jersey',
    'JO': 'Jordanie',
    'KZ': 'Kazakhstan',
    'KE': 'Kenya',
    'KI': 'Kiribati',
    'KP': 'Corée du Nord',
    'KR': 'Corée du Sud',
    'KW': 'Koweït',
    'KG': 'Kirghizistan',
    'LA': 'Laos',
    'LV': 'Lettonie',
    'LB': 'Liban',
    'LS': 'Lesotho',
    'LR': 'Libéria',
    'LY': 'Libye',
    'LI': 'Liechtenstein',
    'LT': 'Lituanie',
    'LU': 'Luxembourg',
    'MK': 'Macédoine',
    'MG': 'Madagascar',
    'MW': 'Malawi',
    'MY': 'Malaisie',
    'MV': 'Maldives',
    'ML': 'Mali',
    'MT': 'Malte',
    'MH': 'Îles Marshall',
    'MQ': 'Martinique',
    'MR': 'Mauritanie',
    'MU': 'Maurice',
    'YT': 'Mayotte',
    'MX': 'Mexique',
    'FM': 'Micronésie',
    'MD': 'Moldavie',
    'MC': 'Monaco',
    'MN': 'Mongolie',
    'ME': 'Monténégro',
    'MS': 'Montserrat',
    'MA': 'Maroc',
    'MZ': 'Mozambique',
    'MM': 'Myanmar',
    'NA': 'Namibie',
    'NR': 'Nauru',
    'NP': 'Népal',
    'NL': 'Pays-Bas',
    'NC': 'Nouvelle-Calédonie',
    'NZ': 'Nouvelle-Zélande',
    'NI': 'Nicaragua',
    'NE': 'Niger',
    'NG': 'Nigeria',
    'NU': 'Niue',
    'NF': 'Île Norfolk',
    'MP': 'Îles Mariannes du Nord',
    'NO': 'Norvège',
    'OM': 'Oman',
    'PK': 'Pakistan',
    'PW': 'Palau',
    'PS': 'Palestine',
    'PA': 'Panama',
    'PG': 'Papouasie-Nouvelle-Guinée',
    'PY': 'Paraguay',
    'PE': 'Pérou',
    'PH': 'Philippines',
    'PN': 'Pitcairn',
    'PL': 'Pologne',
    'PT': 'Portugal',
    'PR': 'Puerto Rico',
    'QA': 'Qatar',
    'RE': 'Réunion',
    'RO': 'Roumanie',
    'RU': 'Russie',
    'RW': 'Rwanda',
    'BL': 'Saint-Barthélemy',
    'SH': 'Sainte-Hélène',
    'KN': 'Saint-Kitts-et-Nevis',
    'LC': 'Sainte-Lucie',
    'MF': 'Saint-Martin (partie française',
    'SX': 'Saint-Martin (partie néerlandaise',
    'PM': 'Saint-Pierre-et-Miquelon',
    'VC': 'Saint-Vincent-et-les Grenadines',
    'WS': 'Samoa',
    'SM': 'Saint-Marin',
    'ST': 'Sao Tomé-et-Principe',
    'SA': 'Arabie Saoudite',
    'SN': 'Sénégal',
    'RS': 'Serbie',
    'SC': 'Seychelles',
    'SL': 'Sierra Leone',
    'SG': 'Singapour',
    'SK': 'Slovaquie',
    'SI': 'Slovénie',
    'SB': 'Îles Salomon',
    'SO': 'Somalie',
    'ZA': 'Afrique du Sud',
    'GS': 'Géorgie du Sud et les îles Sandwich du Sud',
    'SS': 'Sud-Soudan',
    'ES': 'Espagne',
    'LK': 'Sri Lanka',
    'SD': 'Soudan',
    'SR': 'Suriname',
    'SJ': 'Svalbard et Jan Mayen',
    'SZ': 'Eswatini',
    'SE': 'Suède',
    'CH': 'Suisse',
    'SY': 'Syrie',
    'TW': 'Taiwan',
    'TJ': 'Tadjikistan',
    'TZ': 'Tanzanie',
    'TH': 'Thaïlande',
    'TL': 'Timor-Leste',
    'TG': 'Togo',
    'TK': 'Tokelau',
    'TO': 'Tonga',
    'TT': 'Trinité-et-Tobago',
    'TN': 'Tunisie',
    'TR': 'Turquie',
    'TM': 'Turkménistan',
    'TC': 'Îles Turques-et-Caïques',
    'TV': 'Tuvalu',
    'UG': 'Ouganda',
    'UA': 'Ukraine',
    'AE': 'Émirats Arabes Unis',
    'GB': 'Royaume-Uni',
    'US': 'États-Unis',
    'UM': 'Îles mineures éloignées des États-Unis',
    'UY': 'Uruguay',
    'UZ': 'Ouzbékistan',
    'VU': 'Vanuatu',
    'VE': 'Venezuela',
    'VN': 'Viêt Nam',
    'VI': 'Îles Vierges américaines',
    'WF': 'Wallis-et-Futuna',
    'EH': 'Sahara occidental',
    'YE': 'Yémen',
    'ZM': 'Zambie',
    'ZW': 'Zimbabwe',
  };

  Map<String, dynamic> toMap() {
    return {
      'code2Letters': code2Letters,
    };
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country.code2Letters(
      map['code2Letters'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) =>
      Country.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Country && other.code2Letters == code2Letters;
  }

  @override
  int get hashCode => code2Letters.hashCode;
}
