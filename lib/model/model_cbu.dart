import 'dart:convert';

import 'package:http/http.dart';

class Model {
  void a() async {
    Uri uri = Uri.parse('https://cbu.uz/uz/arkhiv-kursov-valyut/json/');
    Response response = await get(uri);
    NBU nbu = NBU.fromMap(jsonDecode(response.body));

    print(nbu.malumotlar);
  }
}

class NBU {
  List<Malumotlar>? malumotlar;

  NBU({
    this.malumotlar,
  });

  factory NBU.fromMap(Map<String, Object?> map) {
    return NBU(malumotlar: (map['malumotlar'] as List<Malumotlar>).map((e) =>
        Malumotlar.fromMap(e as Map<String, Object?>)).toList());
  }
}

class Malumotlar {
  int? id;
  String? Code;
  String? Ccy;
  String? CcyNm_RU;
  String? CcyNm_UZ;
  String? CcyNm_UZC;
  String? CcyNm_EN;
  int? Nominal;
  String? Rate;
  String? Diff;
  String? Date;

  Malumotlar({
    this.id,
    this.Code,
    this.Ccy,
    this.CcyNm_RU,
    this.CcyNm_UZ,
    this.CcyNm_UZC,
    this.CcyNm_EN,
    this.Nominal,
    this.Rate,
    this.Diff,
    this.Date,
  });

  factory Malumotlar.fromMap(Map<String, Object?> map) {
    return Malumotlar(
      id: map['id'] as int?,
      Code: map['Code'] as String?,
      Ccy: map['Ccy'] as String?,
      CcyNm_RU: map['CcyNm_RU'] as String?,
      CcyNm_UZ: map['CcyNm_UZ'] as String?,
      CcyNm_UZC: map['CcyNm_UZC'] as String?,
      CcyNm_EN: map['CcyNm_EN'] as String?,
      Nominal: map['Nominal'] as int?,
      Rate: map['Rate'] as String?,
      Diff: map['Diff'] as String?,
      Date: map['Date'] as String?,
    );
  }
}
