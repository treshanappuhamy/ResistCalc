import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ToleranceRecord extends FirestoreRecord {
  ToleranceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "bandref" field.
  String? _bandref;
  String get bandref => _bandref ?? '';
  bool hasBandref() => _bandref != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _bandref = snapshotData['bandref'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tolerance');

  static Stream<ToleranceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToleranceRecord.fromSnapshot(s));

  static Future<ToleranceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToleranceRecord.fromSnapshot(s));

  static ToleranceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ToleranceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToleranceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToleranceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToleranceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToleranceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToleranceRecordData({
  String? output,
  String? bandref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'bandref': bandref,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToleranceRecordDocumentEquality implements Equality<ToleranceRecord> {
  const ToleranceRecordDocumentEquality();

  @override
  bool equals(ToleranceRecord? e1, ToleranceRecord? e2) {
    return e1?.output == e2?.output && e1?.bandref == e2?.bandref;
  }

  @override
  int hash(ToleranceRecord? e) =>
      const ListEquality().hash([e?.output, e?.bandref]);

  @override
  bool isValidKey(Object? o) => o is ToleranceRecord;
}
