// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ClientTableTable extends ClientTable
    with TableInfo<$ClientTableTable, ClientTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _horarioMeta =
      const VerificationMeta('horario');
  @override
  late final GeneratedColumn<String> horario = GeneratedColumn<String>(
      'horario', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'descricao', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateCreateMeta =
      const VerificationMeta('dateCreate');
  @override
  late final GeneratedColumn<DateTime> dateCreate = GeneratedColumn<DateTime>(
      'dateCreate', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _dateUpdateMeta =
      const VerificationMeta('dateUpdate');
  @override
  late final GeneratedColumn<DateTime> dateUpdate = GeneratedColumn<DateTime>(
      'dateUpdate', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, horario, descricao, dateCreate, dateUpdate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'client_table';
  @override
  VerificationContext validateIntegrity(Insertable<ClientTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('horario')) {
      context.handle(_horarioMeta,
          horario.isAcceptableOrUnknown(data['horario']!, _horarioMeta));
    } else if (isInserting) {
      context.missing(_horarioMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao']!, _descricaoMeta));
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('dateCreate')) {
      context.handle(
          _dateCreateMeta,
          dateCreate.isAcceptableOrUnknown(
              data['dateCreate']!, _dateCreateMeta));
    } else if (isInserting) {
      context.missing(_dateCreateMeta);
    }
    if (data.containsKey('dateUpdate')) {
      context.handle(
          _dateUpdateMeta,
          dateUpdate.isAcceptableOrUnknown(
              data['dateUpdate']!, _dateUpdateMeta));
    } else if (isInserting) {
      context.missing(_dateUpdateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClientTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      horario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}horario'])!,
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}descricao'])!,
      dateCreate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}dateCreate'])!,
      dateUpdate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}dateUpdate'])!,
    );
  }

  @override
  $ClientTableTable createAlias(String alias) {
    return $ClientTableTable(attachedDatabase, alias);
  }
}

class ClientTableData extends DataClass implements Insertable<ClientTableData> {
  final int id;
  final String name;
  final String horario;
  final String descricao;
  final DateTime dateCreate;
  final DateTime dateUpdate;
  const ClientTableData(
      {required this.id,
      required this.name,
      required this.horario,
      required this.descricao,
      required this.dateCreate,
      required this.dateUpdate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['horario'] = Variable<String>(horario);
    map['descricao'] = Variable<String>(descricao);
    map['dateCreate'] = Variable<DateTime>(dateCreate);
    map['dateUpdate'] = Variable<DateTime>(dateUpdate);
    return map;
  }

  ClientTableCompanion toCompanion(bool nullToAbsent) {
    return ClientTableCompanion(
      id: Value(id),
      name: Value(name),
      horario: Value(horario),
      descricao: Value(descricao),
      dateCreate: Value(dateCreate),
      dateUpdate: Value(dateUpdate),
    );
  }

  factory ClientTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      horario: serializer.fromJson<String>(json['horario']),
      descricao: serializer.fromJson<String>(json['descricao']),
      dateCreate: serializer.fromJson<DateTime>(json['dateCreate']),
      dateUpdate: serializer.fromJson<DateTime>(json['dateUpdate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'horario': serializer.toJson<String>(horario),
      'descricao': serializer.toJson<String>(descricao),
      'dateCreate': serializer.toJson<DateTime>(dateCreate),
      'dateUpdate': serializer.toJson<DateTime>(dateUpdate),
    };
  }

  ClientTableData copyWith(
          {int? id,
          String? name,
          String? horario,
          String? descricao,
          DateTime? dateCreate,
          DateTime? dateUpdate}) =>
      ClientTableData(
        id: id ?? this.id,
        name: name ?? this.name,
        horario: horario ?? this.horario,
        descricao: descricao ?? this.descricao,
        dateCreate: dateCreate ?? this.dateCreate,
        dateUpdate: dateUpdate ?? this.dateUpdate,
      );
  ClientTableData copyWithCompanion(ClientTableCompanion data) {
    return ClientTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      horario: data.horario.present ? data.horario.value : this.horario,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      dateCreate:
          data.dateCreate.present ? data.dateCreate.value : this.dateCreate,
      dateUpdate:
          data.dateUpdate.present ? data.dateUpdate.value : this.dateUpdate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClientTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('horario: $horario, ')
          ..write('descricao: $descricao, ')
          ..write('dateCreate: $dateCreate, ')
          ..write('dateUpdate: $dateUpdate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, horario, descricao, dateCreate, dateUpdate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.horario == this.horario &&
          other.descricao == this.descricao &&
          other.dateCreate == this.dateCreate &&
          other.dateUpdate == this.dateUpdate);
}

class ClientTableCompanion extends UpdateCompanion<ClientTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> horario;
  final Value<String> descricao;
  final Value<DateTime> dateCreate;
  final Value<DateTime> dateUpdate;
  const ClientTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.horario = const Value.absent(),
    this.descricao = const Value.absent(),
    this.dateCreate = const Value.absent(),
    this.dateUpdate = const Value.absent(),
  });
  ClientTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String horario,
    required String descricao,
    required DateTime dateCreate,
    required DateTime dateUpdate,
  })  : name = Value(name),
        horario = Value(horario),
        descricao = Value(descricao),
        dateCreate = Value(dateCreate),
        dateUpdate = Value(dateUpdate);
  static Insertable<ClientTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? horario,
    Expression<String>? descricao,
    Expression<DateTime>? dateCreate,
    Expression<DateTime>? dateUpdate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (horario != null) 'horario': horario,
      if (descricao != null) 'descricao': descricao,
      if (dateCreate != null) 'dateCreate': dateCreate,
      if (dateUpdate != null) 'dateUpdate': dateUpdate,
    });
  }

  ClientTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? horario,
      Value<String>? descricao,
      Value<DateTime>? dateCreate,
      Value<DateTime>? dateUpdate}) {
    return ClientTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      horario: horario ?? this.horario,
      descricao: descricao ?? this.descricao,
      dateCreate: dateCreate ?? this.dateCreate,
      dateUpdate: dateUpdate ?? this.dateUpdate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (horario.present) {
      map['horario'] = Variable<String>(horario.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (dateCreate.present) {
      map['dateCreate'] = Variable<DateTime>(dateCreate.value);
    }
    if (dateUpdate.present) {
      map['dateUpdate'] = Variable<DateTime>(dateUpdate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('horario: $horario, ')
          ..write('descricao: $descricao, ')
          ..write('dateCreate: $dateCreate, ')
          ..write('dateUpdate: $dateUpdate')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClientTableTable clientTable = $ClientTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [clientTable];
}

typedef $$ClientTableTableCreateCompanionBuilder = ClientTableCompanion
    Function({
  Value<int> id,
  required String name,
  required String horario,
  required String descricao,
  required DateTime dateCreate,
  required DateTime dateUpdate,
});
typedef $$ClientTableTableUpdateCompanionBuilder = ClientTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> horario,
  Value<String> descricao,
  Value<DateTime> dateCreate,
  Value<DateTime> dateUpdate,
});

class $$ClientTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ClientTableTable> {
  $$ClientTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get horario => $state.composableBuilder(
      column: $state.table.horario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateCreate => $state.composableBuilder(
      column: $state.table.dateCreate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get dateUpdate => $state.composableBuilder(
      column: $state.table.dateUpdate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ClientTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ClientTableTable> {
  $$ClientTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get horario => $state.composableBuilder(
      column: $state.table.horario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateCreate => $state.composableBuilder(
      column: $state.table.dateCreate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get dateUpdate => $state.composableBuilder(
      column: $state.table.dateUpdate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ClientTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ClientTableTable,
    ClientTableData,
    $$ClientTableTableFilterComposer,
    $$ClientTableTableOrderingComposer,
    $$ClientTableTableCreateCompanionBuilder,
    $$ClientTableTableUpdateCompanionBuilder,
    (
      ClientTableData,
      BaseReferences<_$AppDatabase, $ClientTableTable, ClientTableData>
    ),
    ClientTableData,
    PrefetchHooks Function()> {
  $$ClientTableTableTableManager(_$AppDatabase db, $ClientTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ClientTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ClientTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> horario = const Value.absent(),
            Value<String> descricao = const Value.absent(),
            Value<DateTime> dateCreate = const Value.absent(),
            Value<DateTime> dateUpdate = const Value.absent(),
          }) =>
              ClientTableCompanion(
            id: id,
            name: name,
            horario: horario,
            descricao: descricao,
            dateCreate: dateCreate,
            dateUpdate: dateUpdate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String horario,
            required String descricao,
            required DateTime dateCreate,
            required DateTime dateUpdate,
          }) =>
              ClientTableCompanion.insert(
            id: id,
            name: name,
            horario: horario,
            descricao: descricao,
            dateCreate: dateCreate,
            dateUpdate: dateUpdate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClientTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ClientTableTable,
    ClientTableData,
    $$ClientTableTableFilterComposer,
    $$ClientTableTableOrderingComposer,
    $$ClientTableTableCreateCompanionBuilder,
    $$ClientTableTableUpdateCompanionBuilder,
    (
      ClientTableData,
      BaseReferences<_$AppDatabase, $ClientTableTable, ClientTableData>
    ),
    ClientTableData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClientTableTableTableManager get clientTable =>
      $$ClientTableTableTableManager(_db, _db.clientTable);
}
