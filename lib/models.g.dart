// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'models.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member

extension GetLineCollection on Isar {
  IsarCollection<Line> get lines {
    return getCollection('Line');
  }
}

final LineSchema = CollectionSchema(
  name: 'Line',
  schema:
      '{"name":"Line","properties":[{"name":"start","type":"Long"},{"name":"stop","type":"Long"},{"name":"tripUuid","type":"String"}],"indexes":[{"name":"tripUuid","unique":false,"properties":[{"name":"tripUuid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  adapter: const _LineAdapter(),
  idName: 'id',
  propertyIds: {'start': 0, 'stop': 1, 'tripUuid': 2},
  indexIds: {'tripUuid': 0},
  indexTypes: {
    'tripUuid': [
      NativeIndexType.stringHash,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) => obj.id,
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 1,
);

class _LineAdapter extends IsarTypeAdapter<Line> {
  const _LineAdapter();

  @override
  void serialize(IsarCollection<Line> collection, IsarRawObject rawObj,
      Line object, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.start;
    final _start = value0;
    final value1 = object.stop;
    final _stop = value1;
    final value2 = object.tripUuid;
    final _tripUuid = BinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += _tripUuid.length;
    final size = dynamicSize + 26;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = bufAsBytes(rawObj.buffer, size);
    final writer = BinaryWriter(buffer, 26);
    writer.writeLong(offsets[0], _start);
    writer.writeLong(offsets[1], _stop);
    writer.writeBytes(offsets[2], _tripUuid);
  }

  @override
  Line deserialize(IsarCollection<Line> collection, int id, BinaryReader reader,
      List<int> offsets) {
    final object = Line();
    object.id = id;
    object.start = reader.readLong(offsets[0]);
    object.stop = reader.readLongOrNull(offsets[1]);
    object.tripUuid = reader.readString(offsets[2]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readLong(offset)) as P;
      case 1:
        return (reader.readLongOrNull(offset)) as P;
      case 2:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension LineQueryWhereSort on QueryBuilder<Line, Line, QWhere> {
  QueryBuilder<Line, Line, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Line, Line, QAfterWhere> anyTripUuid() {
    return addWhereClauseInternal(const WhereClause(indexName: 'tripUuid'));
  }
}

extension LineQueryWhere on QueryBuilder<Line, Line, QWhereClause> {
  QueryBuilder<Line, Line, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Line, Line, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Line, Line, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Line, Line, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Line, Line, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Line, Line, QAfterWhereClause> tripUuidEqualTo(String tripUuid) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'tripUuid',
      lower: [tripUuid],
      includeLower: true,
      upper: [tripUuid],
      includeUpper: true,
    ));
  }

  QueryBuilder<Line, Line, QAfterWhereClause> tripUuidNotEqualTo(
      String tripUuid) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'tripUuid',
        upper: [tripUuid],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'tripUuid',
        lower: [tripUuid],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'tripUuid',
        lower: [tripUuid],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'tripUuid',
        upper: [tripUuid],
        includeUpper: false,
      ));
    }
  }
}

extension LineQueryFilter on QueryBuilder<Line, Line, QFilterCondition> {
  QueryBuilder<Line, Line, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> startEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'start',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> startGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'start',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> startLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'start',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> startBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'start',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> stopIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stop',
      value: null,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> stopEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stop',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> stopGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'stop',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> stopLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'stop',
      value: value,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> stopBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'stop',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'tripUuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'tripUuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'tripUuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tripUuid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'tripUuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'tripUuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'tripUuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Line, Line, QAfterFilterCondition> tripUuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'tripUuid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension LineQueryWhereSortBy on QueryBuilder<Line, Line, QSortBy> {
  QueryBuilder<Line, Line, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByStart() {
    return addSortByInternal('start', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByStartDesc() {
    return addSortByInternal('start', Sort.desc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByStop() {
    return addSortByInternal('stop', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByStopDesc() {
    return addSortByInternal('stop', Sort.desc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByTripUuid() {
    return addSortByInternal('tripUuid', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> sortByTripUuidDesc() {
    return addSortByInternal('tripUuid', Sort.desc);
  }
}

extension LineQueryWhereSortThenBy on QueryBuilder<Line, Line, QSortThenBy> {
  QueryBuilder<Line, Line, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByStart() {
    return addSortByInternal('start', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByStartDesc() {
    return addSortByInternal('start', Sort.desc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByStop() {
    return addSortByInternal('stop', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByStopDesc() {
    return addSortByInternal('stop', Sort.desc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByTripUuid() {
    return addSortByInternal('tripUuid', Sort.asc);
  }

  QueryBuilder<Line, Line, QAfterSortBy> thenByTripUuidDesc() {
    return addSortByInternal('tripUuid', Sort.desc);
  }
}

extension LineQueryWhereDistinct on QueryBuilder<Line, Line, QDistinct> {
  QueryBuilder<Line, Line, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Line, Line, QDistinct> distinctByStart() {
    return addDistinctByInternal('start');
  }

  QueryBuilder<Line, Line, QDistinct> distinctByStop() {
    return addDistinctByInternal('stop');
  }

  QueryBuilder<Line, Line, QDistinct> distinctByTripUuid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('tripUuid', caseSensitive: caseSensitive);
  }
}

extension LineQueryProperty on QueryBuilder<Line, Line, QQueryProperty> {
  QueryBuilder<Line, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Line, int, QQueryOperations> startProperty() {
    return addPropertyNameInternal('start');
  }

  QueryBuilder<Line, int?, QQueryOperations> stopProperty() {
    return addPropertyNameInternal('stop');
  }

  QueryBuilder<Line, String, QQueryOperations> tripUuidProperty() {
    return addPropertyNameInternal('tripUuid');
  }
}

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member

extension GetPointCollection on Isar {
  IsarCollection<Point> get points {
    return getCollection('Point');
  }
}

final PointSchema = CollectionSchema(
  name: 'Point',
  schema:
      '{"name":"Point","properties":[{"name":"accuracy","type":"Double"},{"name":"altitude","type":"Double"},{"name":"foreground","type":"Byte"},{"name":"heading","type":"Double"},{"name":"latitude","type":"Double"},{"name":"longtidue","type":"Double"},{"name":"speed","type":"Double"},{"name":"timestamp","type":"Long"}],"indexes":[{"name":"timestamp","unique":false,"properties":[{"name":"timestamp","type":"Value","caseSensitive":false}]}],"links":[]}',
  adapter: const _PointAdapter(),
  idName: 'id',
  propertyIds: {
    'accuracy': 0,
    'altitude': 1,
    'foreground': 2,
    'heading': 3,
    'latitude': 4,
    'longtidue': 5,
    'speed': 6,
    'timestamp': 7
  },
  indexIds: {'timestamp': 0},
  indexTypes: {
    'timestamp': [
      NativeIndexType.long,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) => obj.id,
  setId: (obj, id) => obj.id = id,
  getLinks: (obj) => [],
  version: 1,
);

class _PointAdapter extends IsarTypeAdapter<Point> {
  const _PointAdapter();

  @override
  void serialize(IsarCollection<Point> collection, IsarRawObject rawObj,
      Point object, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.accuracy;
    final _accuracy = value0;
    final value1 = object.altitude;
    final _altitude = value1;
    final value2 = object.foreground;
    final _foreground = value2;
    final value3 = object.heading;
    final _heading = value3;
    final value4 = object.latitude;
    final _latitude = value4;
    final value5 = object.longtidue;
    final _longtidue = value5;
    final value6 = object.speed;
    final _speed = value6;
    final value7 = object.timestamp;
    final _timestamp = value7;
    final size = dynamicSize + 59;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = bufAsBytes(rawObj.buffer, size);
    final writer = BinaryWriter(buffer, 59);
    writer.writeDouble(offsets[0], _accuracy);
    writer.writeDouble(offsets[1], _altitude);
    writer.writeBool(offsets[2], _foreground);
    writer.writeDouble(offsets[3], _heading);
    writer.writeDouble(offsets[4], _latitude);
    writer.writeDouble(offsets[5], _longtidue);
    writer.writeDouble(offsets[6], _speed);
    writer.writeLong(offsets[7], _timestamp);
  }

  @override
  Point deserialize(IsarCollection<Point> collection, int id,
      BinaryReader reader, List<int> offsets) {
    final object = Point();
    object.accuracy = reader.readDouble(offsets[0]);
    object.altitude = reader.readDouble(offsets[1]);
    object.foreground = reader.readBool(offsets[2]);
    object.heading = reader.readDouble(offsets[3]);
    object.id = id;
    object.latitude = reader.readDouble(offsets[4]);
    object.longtidue = reader.readDouble(offsets[5]);
    object.speed = reader.readDouble(offsets[6]);
    object.timestamp = reader.readLong(offsets[7]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readDouble(offset)) as P;
      case 1:
        return (reader.readDouble(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      case 3:
        return (reader.readDouble(offset)) as P;
      case 4:
        return (reader.readDouble(offset)) as P;
      case 5:
        return (reader.readDouble(offset)) as P;
      case 6:
        return (reader.readDouble(offset)) as P;
      case 7:
        return (reader.readLong(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension PointQueryWhereSort on QueryBuilder<Point, Point, QWhere> {
  QueryBuilder<Point, Point, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Point, Point, QAfterWhere> anyTimestamp() {
    return addWhereClauseInternal(const WhereClause(indexName: 'timestamp'));
  }
}

extension PointQueryWhere on QueryBuilder<Point, Point, QWhereClause> {
  QueryBuilder<Point, Point, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Point, Point, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> timestampEqualTo(
      int timestamp) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'timestamp',
      lower: [timestamp],
      includeLower: true,
      upper: [timestamp],
      includeUpper: true,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> timestampNotEqualTo(
      int timestamp) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'timestamp',
        upper: [timestamp],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'timestamp',
        lower: [timestamp],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'timestamp',
        lower: [timestamp],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'timestamp',
        upper: [timestamp],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Point, Point, QAfterWhereClause> timestampGreaterThan(
    int timestamp, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'timestamp',
      lower: [timestamp],
      includeLower: include,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> timestampLessThan(
    int timestamp, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'timestamp',
      upper: [timestamp],
      includeUpper: include,
    ));
  }

  QueryBuilder<Point, Point, QAfterWhereClause> timestampBetween(
    int lowerTimestamp,
    int upperTimestamp, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'timestamp',
      lower: [lowerTimestamp],
      includeLower: includeLower,
      upper: [upperTimestamp],
      includeUpper: includeUpper,
    ));
  }
}

extension PointQueryFilter on QueryBuilder<Point, Point, QFilterCondition> {
  QueryBuilder<Point, Point, QAfterFilterCondition> accuracyGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'accuracy',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> accuracyLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'accuracy',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> accuracyBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'accuracy',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> altitudeGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'altitude',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> altitudeLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'altitude',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> altitudeBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'altitude',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> foregroundEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'foreground',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> headingGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'heading',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> headingLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'heading',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> headingBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'heading',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> latitudeGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'latitude',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> latitudeLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'latitude',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> latitudeBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'latitude',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> longtidueGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'longtidue',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> longtidueLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'longtidue',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> longtidueBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'longtidue',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> speedGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'speed',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> speedLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'speed',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> speedBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'speed',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> timestampEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'timestamp',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> timestampGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'timestamp',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> timestampLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'timestamp',
      value: value,
    ));
  }

  QueryBuilder<Point, Point, QAfterFilterCondition> timestampBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'timestamp',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension PointQueryWhereSortBy on QueryBuilder<Point, Point, QSortBy> {
  QueryBuilder<Point, Point, QAfterSortBy> sortByAccuracy() {
    return addSortByInternal('accuracy', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByAccuracyDesc() {
    return addSortByInternal('accuracy', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByAltitude() {
    return addSortByInternal('altitude', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByAltitudeDesc() {
    return addSortByInternal('altitude', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByForeground() {
    return addSortByInternal('foreground', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByForegroundDesc() {
    return addSortByInternal('foreground', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByHeading() {
    return addSortByInternal('heading', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByHeadingDesc() {
    return addSortByInternal('heading', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByLatitude() {
    return addSortByInternal('latitude', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByLatitudeDesc() {
    return addSortByInternal('latitude', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByLongtidue() {
    return addSortByInternal('longtidue', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByLongtidueDesc() {
    return addSortByInternal('longtidue', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortBySpeed() {
    return addSortByInternal('speed', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortBySpeedDesc() {
    return addSortByInternal('speed', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByTimestamp() {
    return addSortByInternal('timestamp', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> sortByTimestampDesc() {
    return addSortByInternal('timestamp', Sort.desc);
  }
}

extension PointQueryWhereSortThenBy on QueryBuilder<Point, Point, QSortThenBy> {
  QueryBuilder<Point, Point, QAfterSortBy> thenByAccuracy() {
    return addSortByInternal('accuracy', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByAccuracyDesc() {
    return addSortByInternal('accuracy', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByAltitude() {
    return addSortByInternal('altitude', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByAltitudeDesc() {
    return addSortByInternal('altitude', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByForeground() {
    return addSortByInternal('foreground', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByForegroundDesc() {
    return addSortByInternal('foreground', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByHeading() {
    return addSortByInternal('heading', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByHeadingDesc() {
    return addSortByInternal('heading', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByLatitude() {
    return addSortByInternal('latitude', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByLatitudeDesc() {
    return addSortByInternal('latitude', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByLongtidue() {
    return addSortByInternal('longtidue', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByLongtidueDesc() {
    return addSortByInternal('longtidue', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenBySpeed() {
    return addSortByInternal('speed', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenBySpeedDesc() {
    return addSortByInternal('speed', Sort.desc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByTimestamp() {
    return addSortByInternal('timestamp', Sort.asc);
  }

  QueryBuilder<Point, Point, QAfterSortBy> thenByTimestampDesc() {
    return addSortByInternal('timestamp', Sort.desc);
  }
}

extension PointQueryWhereDistinct on QueryBuilder<Point, Point, QDistinct> {
  QueryBuilder<Point, Point, QDistinct> distinctByAccuracy() {
    return addDistinctByInternal('accuracy');
  }

  QueryBuilder<Point, Point, QDistinct> distinctByAltitude() {
    return addDistinctByInternal('altitude');
  }

  QueryBuilder<Point, Point, QDistinct> distinctByForeground() {
    return addDistinctByInternal('foreground');
  }

  QueryBuilder<Point, Point, QDistinct> distinctByHeading() {
    return addDistinctByInternal('heading');
  }

  QueryBuilder<Point, Point, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Point, Point, QDistinct> distinctByLatitude() {
    return addDistinctByInternal('latitude');
  }

  QueryBuilder<Point, Point, QDistinct> distinctByLongtidue() {
    return addDistinctByInternal('longtidue');
  }

  QueryBuilder<Point, Point, QDistinct> distinctBySpeed() {
    return addDistinctByInternal('speed');
  }

  QueryBuilder<Point, Point, QDistinct> distinctByTimestamp() {
    return addDistinctByInternal('timestamp');
  }
}

extension PointQueryProperty on QueryBuilder<Point, Point, QQueryProperty> {
  QueryBuilder<Point, double, QQueryOperations> accuracyProperty() {
    return addPropertyNameInternal('accuracy');
  }

  QueryBuilder<Point, double, QQueryOperations> altitudeProperty() {
    return addPropertyNameInternal('altitude');
  }

  QueryBuilder<Point, bool, QQueryOperations> foregroundProperty() {
    return addPropertyNameInternal('foreground');
  }

  QueryBuilder<Point, double, QQueryOperations> headingProperty() {
    return addPropertyNameInternal('heading');
  }

  QueryBuilder<Point, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Point, double, QQueryOperations> latitudeProperty() {
    return addPropertyNameInternal('latitude');
  }

  QueryBuilder<Point, double, QQueryOperations> longtidueProperty() {
    return addPropertyNameInternal('longtidue');
  }

  QueryBuilder<Point, double, QQueryOperations> speedProperty() {
    return addPropertyNameInternal('speed');
  }

  QueryBuilder<Point, int, QQueryOperations> timestampProperty() {
    return addPropertyNameInternal('timestamp');
  }
}
