import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ThreeBandRecord extends FirestoreRecord {
  ThreeBandRecord._(
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
      FirebaseFirestore.instance.collection('ThreeBand');

  static Stream<ThreeBandRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThreeBandRecord.fromSnapshot(s));

  static Future<ThreeBandRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThreeBandRecord.fromSnapshot(s));

  static ThreeBandRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThreeBandRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThreeBandRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThreeBandRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThreeBandRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThreeBandRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThreeBandRecordData({
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

class ThreeBandRecordDocumentEquality implements Equality<ThreeBandRecord> {
  const ThreeBandRecordDocumentEquality();

  @override
  bool equals(ThreeBandRecord? e1, ThreeBandRecord? e2) {
    return e1?.output == e2?.output && e1?.bandref == e2?.bandref;
  }

  @override
  int hash(ThreeBandRecord? e) =>
      const ListEquality().hash([e?.output, e?.bandref]);

  @override
  bool isValidKey(Object? o) => o is ThreeBandRecord;
}
