import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MultiplierRecord extends FirestoreRecord {
  MultiplierRecord._(
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
      FirebaseFirestore.instance.collection('Multiplier');

  static Stream<MultiplierRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MultiplierRecord.fromSnapshot(s));

  static Future<MultiplierRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MultiplierRecord.fromSnapshot(s));

  static MultiplierRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MultiplierRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MultiplierRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MultiplierRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MultiplierRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MultiplierRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMultiplierRecordData({
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

class MultiplierRecordDocumentEquality implements Equality<MultiplierRecord> {
  const MultiplierRecordDocumentEquality();

  @override
  bool equals(MultiplierRecord? e1, MultiplierRecord? e2) {
    return e1?.output == e2?.output && e1?.bandref == e2?.bandref;
  }

  @override
  int hash(MultiplierRecord? e) =>
      const ListEquality().hash([e?.output, e?.bandref]);

  @override
  bool isValidKey(Object? o) => o is MultiplierRecord;
}
