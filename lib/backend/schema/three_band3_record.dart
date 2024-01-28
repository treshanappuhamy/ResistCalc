import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ThreeBand3Record extends FirestoreRecord {
  ThreeBand3Record._(
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
      FirebaseFirestore.instance.collection('ThreeBand3');

  static Stream<ThreeBand3Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThreeBand3Record.fromSnapshot(s));

  static Future<ThreeBand3Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThreeBand3Record.fromSnapshot(s));

  static ThreeBand3Record fromSnapshot(DocumentSnapshot snapshot) =>
      ThreeBand3Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThreeBand3Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThreeBand3Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThreeBand3Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThreeBand3Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThreeBand3RecordData({
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

class ThreeBand3RecordDocumentEquality implements Equality<ThreeBand3Record> {
  const ThreeBand3RecordDocumentEquality();

  @override
  bool equals(ThreeBand3Record? e1, ThreeBand3Record? e2) {
    return e1?.output == e2?.output && e1?.bandref == e2?.bandref;
  }

  @override
  int hash(ThreeBand3Record? e) =>
      const ListEquality().hash([e?.output, e?.bandref]);

  @override
  bool isValidKey(Object? o) => o is ThreeBand3Record;
}
