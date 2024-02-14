import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorRecord extends FirestoreRecord {
  DoctorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "type_prosen" field.
  String? _typeProsen;
  String get typeProsen => _typeProsen ?? '';
  bool hasTypeProsen() => _typeProsen != null;

  // "type_doctor" field.
  String? _typeDoctor;
  String get typeDoctor => _typeDoctor ?? '';
  bool hasTypeDoctor() => _typeDoctor != null;

  // "Specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  // "subspecialty" field.
  String? _subspecialty;
  String get subspecialty => _subspecialty ?? '';
  bool hasSubspecialty() => _subspecialty != null;

  // "year_of_birth" field.
  int? _yearOfBirth;
  int get yearOfBirth => _yearOfBirth ?? 0;
  bool hasYearOfBirth() => _yearOfBirth != null;

  // "General_CV" field.
  String? _generalCV;
  String get generalCV => _generalCV ?? '';
  bool hasGeneralCV() => _generalCV != null;

  // "Qualifications" field.
  String? _qualifications;
  String get qualifications => _qualifications ?? '';
  bool hasQualifications() => _qualifications != null;

  // "Practical_experiences" field.
  String? _practicalExperiences;
  String get practicalExperiences => _practicalExperiences ?? '';
  bool hasPracticalExperiences() => _practicalExperiences != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _typeProsen = snapshotData['type_prosen'] as String?;
    _typeDoctor = snapshotData['type_doctor'] as String?;
    _specialization = snapshotData['Specialization'] as String?;
    _subspecialty = snapshotData['subspecialty'] as String?;
    _yearOfBirth = castToType<int>(snapshotData['year_of_birth']);
    _generalCV = snapshotData['General_CV'] as String?;
    _qualifications = snapshotData['Qualifications'] as String?;
    _practicalExperiences = snapshotData['Practical_experiences'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Doctor');

  static Stream<DoctorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorRecord.fromSnapshot(s));

  static Future<DoctorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorRecord.fromSnapshot(s));

  static DoctorRecord fromSnapshot(DocumentSnapshot snapshot) => DoctorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? typeProsen,
  String? typeDoctor,
  String? specialization,
  String? subspecialty,
  int? yearOfBirth,
  String? generalCV,
  String? qualifications,
  String? practicalExperiences,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'type_prosen': typeProsen,
      'type_doctor': typeDoctor,
      'Specialization': specialization,
      'subspecialty': subspecialty,
      'year_of_birth': yearOfBirth,
      'General_CV': generalCV,
      'Qualifications': qualifications,
      'Practical_experiences': practicalExperiences,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorRecordDocumentEquality implements Equality<DoctorRecord> {
  const DoctorRecordDocumentEquality();

  @override
  bool equals(DoctorRecord? e1, DoctorRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.typeProsen == e2?.typeProsen &&
        e1?.typeDoctor == e2?.typeDoctor &&
        e1?.specialization == e2?.specialization &&
        e1?.subspecialty == e2?.subspecialty &&
        e1?.yearOfBirth == e2?.yearOfBirth &&
        e1?.generalCV == e2?.generalCV &&
        e1?.qualifications == e2?.qualifications &&
        e1?.practicalExperiences == e2?.practicalExperiences;
  }

  @override
  int hash(DoctorRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.typeProsen,
        e?.typeDoctor,
        e?.specialization,
        e?.subspecialty,
        e?.yearOfBirth,
        e?.generalCV,
        e?.qualifications,
        e?.practicalExperiences
      ]);

  @override
  bool isValidKey(Object? o) => o is DoctorRecord;
}
