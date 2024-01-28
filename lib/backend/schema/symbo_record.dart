import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SymboRecord extends FirestoreRecord {
  SymboRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symbo');

  static Stream<SymboRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SymboRecord.fromSnapshot(s));

  static Future<SymboRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SymboRecord.fromSnapshot(s));

  static SymboRecord fromSnapshot(DocumentSnapshot snapshot) => SymboRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SymboRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SymboRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SymboRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SymboRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSymboRecordData({
  String? output,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
    }.withoutNulls,
  );

  return firestoreData;
}

class SymboRecordDocumentEquality implements Equality<SymboRecord> {
  const SymboRecordDocumentEquality();

  @override
  bool equals(SymboRecord? e1, SymboRecord? e2) {
    return e1?.output == e2?.output;
  }

  @override
  int hash(SymboRecord? e) => const ListEquality().hash([e?.output]);

  @override
  bool isValidKey(Object? o) => o is SymboRecord;
}
