import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TempCoeffRecord extends FirestoreRecord {
  TempCoeffRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "coeff" field.
  String? _coeff;
  String get coeff => _coeff ?? '';
  bool hasCoeff() => _coeff != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _coeff = snapshotData['coeff'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Temp_Coeff');

  static Stream<TempCoeffRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TempCoeffRecord.fromSnapshot(s));

  static Future<TempCoeffRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TempCoeffRecord.fromSnapshot(s));

  static TempCoeffRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TempCoeffRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TempCoeffRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TempCoeffRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TempCoeffRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TempCoeffRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTempCoeffRecordData({
  String? output,
  String? coeff,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'coeff': coeff,
    }.withoutNulls,
  );

  return firestoreData;
}

class TempCoeffRecordDocumentEquality implements Equality<TempCoeffRecord> {
  const TempCoeffRecordDocumentEquality();

  @override
  bool equals(TempCoeffRecord? e1, TempCoeffRecord? e2) {
    return e1?.output == e2?.output && e1?.coeff == e2?.coeff;
  }

  @override
  int hash(TempCoeffRecord? e) =>
      const ListEquality().hash([e?.output, e?.coeff]);

  @override
  bool isValidKey(Object? o) => o is TempCoeffRecord;
}
