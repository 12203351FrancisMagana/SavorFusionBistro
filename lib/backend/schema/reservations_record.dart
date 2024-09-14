import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReservationsRecord extends FirestoreRecord {
  ReservationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "preferences" field.
  String? _preferences;
  String get preferences => _preferences ?? '';
  bool hasPreferences() => _preferences != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "guest" field.
  String? _guest;
  String get guest => _guest ?? '';
  bool hasGuest() => _guest != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _time = snapshotData['time'] as String?;
    _preferences = snapshotData['preferences'] as String?;
    _email = snapshotData['email'] as String?;
    _guest = snapshotData['guest'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reservations');

  static Stream<ReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReservationsRecord.fromSnapshot(s));

  static Future<ReservationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReservationsRecord.fromSnapshot(s));

  static ReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReservationsRecordData({
  DateTime? date,
  String? time,
  String? preferences,
  String? email,
  String? guest,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'time': time,
      'preferences': preferences,
      'email': email,
      'guest': guest,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReservationsRecordDocumentEquality
    implements Equality<ReservationsRecord> {
  const ReservationsRecordDocumentEquality();

  @override
  bool equals(ReservationsRecord? e1, ReservationsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.time == e2?.time &&
        e1?.preferences == e2?.preferences &&
        e1?.email == e2?.email &&
        e1?.guest == e2?.guest;
  }

  @override
  int hash(ReservationsRecord? e) => const ListEquality()
      .hash([e?.date, e?.time, e?.preferences, e?.email, e?.guest]);

  @override
  bool isValidKey(Object? o) => o is ReservationsRecord;
}
