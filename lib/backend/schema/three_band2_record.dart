import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ThreeBand2Record extends FirestoreRecord {
  ThreeBand2Record._(
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
      FirebaseFirestore.instance.collection('ThreeBand2');

  static Stream<ThreeBand2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThreeBand2Record.fromSnapshot(s));

  static Future<ThreeBand2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThreeBand2Record.fromSnapshot(s));

  static ThreeBand2Record fromSnapshot(DocumentSnapshot snapshot) =>
      ThreeBand2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThreeBand2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThreeBand2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThreeBand2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThreeBand2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThreeBand2RecordData({
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

class ThreeBand2RecordDocumentEquality implements Equality<ThreeBand2Record> {
  const ThreeBand2RecordDocumentEquality();

  @override
  bool equals(ThreeBand2Record? e1, ThreeBand2Record? e2) {
    return e1?.output == e2?.output && e1?.bandref == e2?.bandref;
  }

  @override
  int hash(ThreeBand2Record? e) =>
      const ListEquality().hash([e?.output, e?.bandref]);

  @override
  bool isValidKey(Object? o) => o is ThreeBand2Record;
}
