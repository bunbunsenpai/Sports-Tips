import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TennisMatchesRecord extends FirestoreRecord {
  TennisMatchesRecord._(
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

  // "tips" field.
  String? _tips;
  String get tips => _tips ?? '';
  bool hasTips() => _tips != null;

  // "team1Name" field.
  String? _team1Name;
  String get team1Name => _team1Name ?? '';
  bool hasTeam1Name() => _team1Name != null;

  // "team2Name" field.
  String? _team2Name;
  String get team2Name => _team2Name ?? '';
  bool hasTeam2Name() => _team2Name != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _tournament = snapshotData['tournament'] as String?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _venue = snapshotData['venue'] as String?;
    _team1Logo = snapshotData['team1Logo'] as String?;
    _team2Logo = snapshotData['team2Logo'] as String?;
    _tipPrice = snapshotData['tipPrice'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _tips = snapshotData['tips'] as String?;
    _team1Name = snapshotData['team1Name'] as String?;
    _team2Name = snapshotData['team2Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tennis_Matches');

  static Stream<TennisMatchesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TennisMatchesRecord.fromSnapshot(s));

  static Future<TennisMatchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TennisMatchesRecord.fromSnapshot(s));

  static TennisMatchesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TennisMatchesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TennisMatchesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TennisMatchesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TennisMatchesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TennisMatchesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTennisMatchesRecordData({
  String? title,
  String? tournament,
  DateTime? startTime,
  String? venue,
  String? team1Logo,
  String? team2Logo,
  String? tipPrice,
  DateTime? createdAt,
  String? tips,
  String? team1Name,
  String? team2Name,
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
      'tips': tips,
      'team1Name': team1Name,
      'team2Name': team2Name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TennisMatchesRecordDocumentEquality
    implements Equality<TennisMatchesRecord> {
  const TennisMatchesRecordDocumentEquality();

  @override
  bool equals(TennisMatchesRecord? e1, TennisMatchesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.tournament == e2?.tournament &&
        e1?.startTime == e2?.startTime &&
        e1?.venue == e2?.venue &&
        e1?.team1Logo == e2?.team1Logo &&
        e1?.team2Logo == e2?.team2Logo &&
        e1?.tipPrice == e2?.tipPrice &&
        e1?.createdAt == e2?.createdAt &&
        e1?.tips == e2?.tips &&
        e1?.team1Name == e2?.team1Name &&
        e1?.team2Name == e2?.team2Name;
  }

  @override
  int hash(TennisMatchesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.tournament,
        e?.startTime,
        e?.venue,
        e?.team1Logo,
        e?.team2Logo,
        e?.tipPrice,
        e?.createdAt,
        e?.tips,
        e?.team1Name,
        e?.team2Name
      ]);

  @override
  bool isValidKey(Object? o) => o is TennisMatchesRecord;
}
