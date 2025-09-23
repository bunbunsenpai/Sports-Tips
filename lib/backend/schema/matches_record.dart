import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchesRecord extends FirestoreRecord {
  MatchesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "tournament" field.
  String? _tournament;
  String get tournament => _tournament ?? '';
  bool hasTournament() => _tournament != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "venue" field.
  String? _venue;
  String get venue => _venue ?? '';
  bool hasVenue() => _venue != null;

  // "team1Logo" field.
  String? _team1Logo;
  String get team1Logo => _team1Logo ?? '';
  bool hasTeam1Logo() => _team1Logo != null;

  // "team2Logo" field.
  String? _team2Logo;
  String get team2Logo => _team2Logo ?? '';
  bool hasTeam2Logo() => _team2Logo != null;

  // "tipPrice" field.
  String? _tipPrice;
  String get tipPrice => _tipPrice ?? '';
  bool hasTipPrice() => _tipPrice != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "tip" field.
  String? _tip;
  String get tip => _tip ?? '';
  bool hasTip() => _tip != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _tournament = snapshotData['tournament'] as String?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _venue = snapshotData['venue'] as String?;
    _team1Logo = snapshotData['team1Logo'] as String?;
    _team2Logo = snapshotData['team2Logo'] as String?;
    _tipPrice = snapshotData['tipPrice'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _tip = snapshotData['tip'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Matches');

  static Stream<MatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchesRecord.fromSnapshot(s));

  static Future<MatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchesRecord.fromSnapshot(s));

  static MatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchesRecordData({
  String? title,
  String? tournament,
  DateTime? startTime,
  String? venue,
  String? team1Logo,
  String? team2Logo,
  String? tipPrice,
  DateTime? createdAt,
  String? tip,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'tournament': tournament,
      'startTime': startTime,
      'venue': venue,
      'team1Logo': team1Logo,
      'team2Logo': team2Logo,
      'tipPrice': tipPrice,
      'createdAt': createdAt,
      'tip': tip,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchesRecordDocumentEquality implements Equality<MatchesRecord> {
  const MatchesRecordDocumentEquality();

  @override
  bool equals(MatchesRecord? e1, MatchesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.tournament == e2?.tournament &&
        e1?.startTime == e2?.startTime &&
        e1?.venue == e2?.venue &&
        e1?.team1Logo == e2?.team1Logo &&
        e1?.team2Logo == e2?.team2Logo &&
        e1?.tipPrice == e2?.tipPrice &&
        e1?.createdAt == e2?.createdAt &&
        e1?.tip == e2?.tip;
  }

  @override
  int hash(MatchesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.tournament,
        e?.startTime,
        e?.venue,
        e?.team1Logo,
        e?.team2Logo,
        e?.tipPrice,
        e?.createdAt,
        e?.tip
      ]);

  @override
  bool isValidKey(Object? o) => o is MatchesRecord;
}
