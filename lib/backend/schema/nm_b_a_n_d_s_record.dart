import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NmBANDSRecord extends FirestoreRecord {
  NmBANDSRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "output" field.
  String? _output;
  String get output => _output ?? '';
  bool hasOutput() => _output != null;

  // "numnum" field.
  int? _numnum;
  int get numnum => _numnum ?? 0;
  bool hasNumnum() => _numnum != null;

  void _initializeFields() {
    _output = snapshotData['output'] as String?;
    _numnum = castToType<int>(snapshotData['numnum']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nmBANDS');

  static Stream<NmBANDSRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NmBANDSRecord.fromSnapshot(s));

  static Future<NmBANDSRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NmBANDSRecord.fromSnapshot(s));

  static NmBANDSRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NmBANDSRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NmBANDSRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NmBANDSRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NmBANDSRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NmBANDSRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNmBANDSRecordData({
  String? output,
  int? numnum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'output': output,
      'numnum': numnum,
    }.withoutNulls,
  );

  return firestoreData;
}

class NmBANDSRecordDocumentEquality implements Equality<NmBANDSRecord> {
  const NmBANDSRecordDocumentEquality();

  @override
  bool equals(NmBANDSRecord? e1, NmBANDSRecord? e2) {
    return e1?.output == e2?.output && e1?.numnum == e2?.numnum;
  }

  @override
  int hash(NmBANDSRecord? e) =>
      const ListEquality().hash([e?.output, e?.numnum]);

  @override
  bool isValidKey(Object? o) => o is NmBANDSRecord;
}
