import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "Qust" field.
  DocumentReference? _qust;
  DocumentReference? get qust => _qust;
  bool hasQust() => _qust != null;

  // "ColorUser" field.
  DocumentReference? _colorUser;
  DocumentReference? get colorUser => _colorUser;
  bool hasColorUser() => _colorUser != null;

  // "address" field.
  DocumentReference? _address;
  DocumentReference? get address => _address;
  bool hasAddress() => _address != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "states" field.
  String? _states;
  String get states => _states ?? '';
  bool hasStates() => _states != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "background_user" field.
  String? _backgroundUser;
  String get backgroundUser => _backgroundUser ?? '';
  bool hasBackgroundUser() => _backgroundUser != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _sex = snapshotData['sex'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _qust = snapshotData['Qust'] as DocumentReference?;
    _colorUser = snapshotData['ColorUser'] as DocumentReference?;
    _address = snapshotData['address'] as DocumentReference?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _states = snapshotData['states'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _backgroundUser = snapshotData['background_user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? sex,
  int? age,
  DocumentReference? qust,
  DocumentReference? colorUser,
  DocumentReference? address,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? states,
  LatLng? location,
  String? backgroundUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'sex': sex,
      'age': age,
      'Qust': qust,
      'ColorUser': colorUser,
      'address': address,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'states': states,
      'location': location,
      'background_user': backgroundUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.sex == e2?.sex &&
        e1?.age == e2?.age &&
        e1?.qust == e2?.qust &&
        e1?.colorUser == e2?.colorUser &&
        e1?.address == e2?.address &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.states == e2?.states &&
        e1?.location == e2?.location &&
        e1?.backgroundUser == e2?.backgroundUser;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.sex,
        e?.age,
        e?.qust,
        e?.colorUser,
        e?.address,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.states,
        e?.location,
        e?.backgroundUser
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
