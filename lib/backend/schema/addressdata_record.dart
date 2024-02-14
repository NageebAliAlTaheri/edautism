import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressdataRecord extends FirestoreRecord {
  AddressdataRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "Street" field.
  String? _street;
  String get street => _street ?? '';
  bool hasStreet() => _street != null;

  // "zipcode" field.
  int? _zipcode;
  int get zipcode => _zipcode ?? 0;
  bool hasZipcode() => _zipcode != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _state = snapshotData['State'] as String?;
    _city = snapshotData['City'] as String?;
    _street = snapshotData['Street'] as String?;
    _zipcode = castToType<int>(snapshotData['zipcode']);
    _location = snapshotData['location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addressdata');

  static Stream<AddressdataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressdataRecord.fromSnapshot(s));

  static Future<AddressdataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressdataRecord.fromSnapshot(s));

  static AddressdataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressdataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressdataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressdataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressdataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressdataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressdataRecordData({
  String? state,
  String? city,
  String? street,
  int? zipcode,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'State': state,
      'City': city,
      'Street': street,
      'zipcode': zipcode,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressdataRecordDocumentEquality implements Equality<AddressdataRecord> {
  const AddressdataRecordDocumentEquality();

  @override
  bool equals(AddressdataRecord? e1, AddressdataRecord? e2) {
    return e1?.state == e2?.state &&
        e1?.city == e2?.city &&
        e1?.street == e2?.street &&
        e1?.zipcode == e2?.zipcode &&
        e1?.location == e2?.location;
  }

  @override
  int hash(AddressdataRecord? e) => const ListEquality()
      .hash([e?.state, e?.city, e?.street, e?.zipcode, e?.location]);

  @override
  bool isValidKey(Object? o) => o is AddressdataRecord;
}
