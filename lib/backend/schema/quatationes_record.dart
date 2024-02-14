import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class QuatationesRecord extends FirestoreRecord {
  QuatationesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "quest1" field.
  String? _quest1;
  String get quest1 => _quest1 ?? '';
  bool hasQuest1() => _quest1 != null;

  // "quest2" field.
  String? _quest2;
  String get quest2 => _quest2 ?? '';
  bool hasQuest2() => _quest2 != null;

  // "quest3" field.
  String? _quest3;
  String get quest3 => _quest3 ?? '';
  bool hasQuest3() => _quest3 != null;

  // "quest4" field.
  String? _quest4;
  String get quest4 => _quest4 ?? '';
  bool hasQuest4() => _quest4 != null;

  // "quest5" field.
  String? _quest5;
  String get quest5 => _quest5 ?? '';
  bool hasQuest5() => _quest5 != null;

  // "quest6" field.
  String? _quest6;
  String get quest6 => _quest6 ?? '';
  bool hasQuest6() => _quest6 != null;

  // "quest7" field.
  String? _quest7;
  String get quest7 => _quest7 ?? '';
  bool hasQuest7() => _quest7 != null;

  // "quest8" field.
  String? _quest8;
  String get quest8 => _quest8 ?? '';
  bool hasQuest8() => _quest8 != null;

  // "quest9" field.
  String? _quest9;
  String get quest9 => _quest9 ?? '';
  bool hasQuest9() => _quest9 != null;

  // "quest10" field.
  String? _quest10;
  String get quest10 => _quest10 ?? '';
  bool hasQuest10() => _quest10 != null;

  // "quest11" field.
  String? _quest11;
  String get quest11 => _quest11 ?? '';
  bool hasQuest11() => _quest11 != null;

  // "quest12" field.
  String? _quest12;
  String get quest12 => _quest12 ?? '';
  bool hasQuest12() => _quest12 != null;

  // "quest13" field.
  String? _quest13;
  String get quest13 => _quest13 ?? '';
  bool hasQuest13() => _quest13 != null;

  // "quest14" field.
  String? _quest14;
  String get quest14 => _quest14 ?? '';
  bool hasQuest14() => _quest14 != null;

  // "quest15" field.
  String? _quest15;
  String get quest15 => _quest15 ?? '';
  bool hasQuest15() => _quest15 != null;

  // "quest16" field.
  String? _quest16;
  String get quest16 => _quest16 ?? '';
  bool hasQuest16() => _quest16 != null;

  // "quest17" field.
  String? _quest17;
  String get quest17 => _quest17 ?? '';
  bool hasQuest17() => _quest17 != null;

  void _initializeFields() {
    _quest1 = snapshotData['quest1'] as String?;
    _quest2 = snapshotData['quest2'] as String?;
    _quest3 = snapshotData['quest3'] as String?;
    _quest4 = snapshotData['quest4'] as String?;
    _quest5 = snapshotData['quest5'] as String?;
    _quest6 = snapshotData['quest6'] as String?;
    _quest7 = snapshotData['quest7'] as String?;
    _quest8 = snapshotData['quest8'] as String?;
    _quest9 = snapshotData['quest9'] as String?;
    _quest10 = snapshotData['quest10'] as String?;
    _quest11 = snapshotData['quest11'] as String?;
    _quest12 = snapshotData['quest12'] as String?;
    _quest13 = snapshotData['quest13'] as String?;
    _quest14 = snapshotData['quest14'] as String?;
    _quest15 = snapshotData['quest15'] as String?;
    _quest16 = snapshotData['quest16'] as String?;
    _quest17 = snapshotData['quest17'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quatationes');

  static Stream<QuatationesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuatationesRecord.fromSnapshot(s));

  static Future<QuatationesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuatationesRecord.fromSnapshot(s));

  static QuatationesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QuatationesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuatationesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuatationesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuatationesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuatationesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuatationesRecordData({
  String? quest1,
  String? quest2,
  String? quest3,
  String? quest4,
  String? quest5,
  String? quest6,
  String? quest7,
  String? quest8,
  String? quest9,
  String? quest10,
  String? quest11,
  String? quest12,
  String? quest13,
  String? quest14,
  String? quest15,
  String? quest16,
  String? quest17,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quest1': quest1,
      'quest2': quest2,
      'quest3': quest3,
      'quest4': quest4,
      'quest5': quest5,
      'quest6': quest6,
      'quest7': quest7,
      'quest8': quest8,
      'quest9': quest9,
      'quest10': quest10,
      'quest11': quest11,
      'quest12': quest12,
      'quest13': quest13,
      'quest14': quest14,
      'quest15': quest15,
      'quest16': quest16,
      'quest17': quest17,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuatationesRecordDocumentEquality implements Equality<QuatationesRecord> {
  const QuatationesRecordDocumentEquality();

  @override
  bool equals(QuatationesRecord? e1, QuatationesRecord? e2) {
    return e1?.quest1 == e2?.quest1 &&
        e1?.quest2 == e2?.quest2 &&
        e1?.quest3 == e2?.quest3 &&
        e1?.quest4 == e2?.quest4 &&
        e1?.quest5 == e2?.quest5 &&
        e1?.quest6 == e2?.quest6 &&
        e1?.quest7 == e2?.quest7 &&
        e1?.quest8 == e2?.quest8 &&
        e1?.quest9 == e2?.quest9 &&
        e1?.quest10 == e2?.quest10 &&
        e1?.quest11 == e2?.quest11 &&
        e1?.quest12 == e2?.quest12 &&
        e1?.quest13 == e2?.quest13 &&
        e1?.quest14 == e2?.quest14 &&
        e1?.quest15 == e2?.quest15 &&
        e1?.quest16 == e2?.quest16 &&
        e1?.quest17 == e2?.quest17;
  }

  @override
  int hash(QuatationesRecord? e) => const ListEquality().hash([
        e?.quest1,
        e?.quest2,
        e?.quest3,
        e?.quest4,
        e?.quest5,
        e?.quest6,
        e?.quest7,
        e?.quest8,
        e?.quest9,
        e?.quest10,
        e?.quest11,
        e?.quest12,
        e?.quest13,
        e?.quest14,
        e?.quest15,
        e?.quest16,
        e?.quest17
      ]);

  @override
  bool isValidKey(Object? o) => o is QuatationesRecord;
}
