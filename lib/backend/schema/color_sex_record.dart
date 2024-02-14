import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ColorSexRecord extends FirestoreRecord {
  ColorSexRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "male1" field.
  String? _male1;
  String get male1 => _male1 ?? '';
  bool hasMale1() => _male1 != null;

  // "male2" field.
  String? _male2;
  String get male2 => _male2 ?? '';
  bool hasMale2() => _male2 != null;

  // "male3" field.
  String? _male3;
  String get male3 => _male3 ?? '';
  bool hasMale3() => _male3 != null;

  // "male4" field.
  String? _male4;
  String get male4 => _male4 ?? '';
  bool hasMale4() => _male4 != null;

  // "female1" field.
  String? _female1;
  String get female1 => _female1 ?? '';
  bool hasFemale1() => _female1 != null;

  // "female2" field.
  String? _female2;
  String get female2 => _female2 ?? '';
  bool hasFemale2() => _female2 != null;

  // "female3" field.
  String? _female3;
  String get female3 => _female3 ?? '';
  bool hasFemale3() => _female3 != null;

  // "female4" field.
  String? _female4;
  String get female4 => _female4 ?? '';
  bool hasFemale4() => _female4 != null;

  void _initializeFields() {
    _male1 = snapshotData['male1'] as String?;
    _male2 = snapshotData['male2'] as String?;
    _male3 = snapshotData['male3'] as String?;
    _male4 = snapshotData['male4'] as String?;
    _female1 = snapshotData['female1'] as String?;
    _female2 = snapshotData['female2'] as String?;
    _female3 = snapshotData['female3'] as String?;
    _female4 = snapshotData['female4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ColorSex');

  static Stream<ColorSexRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ColorSexRecord.fromSnapshot(s));

  static Future<ColorSexRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ColorSexRecord.fromSnapshot(s));

  static ColorSexRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ColorSexRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ColorSexRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ColorSexRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ColorSexRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ColorSexRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createColorSexRecordData({
  String? male1,
  String? male2,
  String? male3,
  String? male4,
  String? female1,
  String? female2,
  String? female3,
  String? female4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'male1': male1,
      'male2': male2,
      'male3': male3,
      'male4': male4,
      'female1': female1,
      'female2': female2,
      'female3': female3,
      'female4': female4,
    }.withoutNulls,
  );

  return firestoreData;
}

class ColorSexRecordDocumentEquality implements Equality<ColorSexRecord> {
  const ColorSexRecordDocumentEquality();

  @override
  bool equals(ColorSexRecord? e1, ColorSexRecord? e2) {
    return e1?.male1 == e2?.male1 &&
        e1?.male2 == e2?.male2 &&
        e1?.male3 == e2?.male3 &&
        e1?.male4 == e2?.male4 &&
        e1?.female1 == e2?.female1 &&
        e1?.female2 == e2?.female2 &&
        e1?.female3 == e2?.female3 &&
        e1?.female4 == e2?.female4;
  }

  @override
  int hash(ColorSexRecord? e) => const ListEquality().hash([
        e?.male1,
        e?.male2,
        e?.male3,
        e?.male4,
        e?.female1,
        e?.female2,
        e?.female3,
        e?.female4
      ]);

  @override
  bool isValidKey(Object? o) => o is ColorSexRecord;
}
