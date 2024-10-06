// Mocks generated by Mockito 5.4.4 from annotations
// in list_client_flutter/test/mocks/client_provider_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:drift/drift.dart' as _i3;
import 'package:drift/src/runtime/executor/stream_queries.dart' as _i4;
import 'package:list_client_flutter/data/database/client_DAO.dart' as _i6;
import 'package:list_client_flutter/data/database/database.dart' as _i2;
import 'package:list_client_flutter/data/model/client.dart' as _i8;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAppDatabase_0 extends _i1.SmartFake implements _i2.AppDatabase {
  _FakeAppDatabase_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseConnection_1 extends _i1.SmartFake
    implements _i3.DatabaseConnection {
  _FakeDatabaseConnection_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDriftDatabaseOptions_2 extends _i1.SmartFake
    implements _i3.DriftDatabaseOptions {
  _FakeDriftDatabaseOptions_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQueryExecutor_3 extends _i1.SmartFake implements _i3.QueryExecutor {
  _FakeQueryExecutor_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamQueryStore_4 extends _i1.SmartFake
    implements _i4.StreamQueryStore {
  _FakeStreamQueryStore_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseConnectionUser_5 extends _i1.SmartFake
    implements _i3.DatabaseConnectionUser {
  _FakeDatabaseConnectionUser_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$ClientTableTable_6 extends _i1.SmartFake
    implements _i2.$ClientTableTable {
  _Fake$ClientTableTable_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_7<T1> extends _i1.SmartFake implements _i5.Future<T1> {
  _FakeFuture_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInsertStatement_8<T1 extends _i3.Table, D1> extends _i1.SmartFake
    implements _i3.InsertStatement<T1, D1> {
  _FakeInsertStatement_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUpdateStatement_9<T extends _i3.Table, D> extends _i1.SmartFake
    implements _i3.UpdateStatement<T, D> {
  _FakeUpdateStatement_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSimpleSelectStatement_10<T1 extends _i3.HasResultSet, D>
    extends _i1.SmartFake implements _i3.SimpleSelectStatement<T1, D> {
  _FakeSimpleSelectStatement_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJoinedSelectStatement_11<FirstT extends _i3.HasResultSet, FirstD>
    extends _i1.SmartFake implements _i3.JoinedSelectStatement<FirstT, FirstD> {
  _FakeJoinedSelectStatement_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSelectable_12<T> extends _i1.SmartFake implements _i3.Selectable<T> {
  _FakeSelectable_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeleteStatement_13<T1 extends _i3.Table, D1> extends _i1.SmartFake
    implements _i3.DeleteStatement<T1, D1> {
  _FakeDeleteStatement_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGenerationContext_14 extends _i1.SmartFake
    implements _i3.GenerationContext {
  _FakeGenerationContext_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ClientDao].
///
/// See the documentation for Mockito's code generation for more information.
class MockClientDao extends _i1.Mock implements _i6.ClientDao {
  MockClientDao() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AppDatabase get attachedDatabase => (super.noSuchMethod(
        Invocation.getter(#attachedDatabase),
        returnValue: _FakeAppDatabase_0(
          this,
          Invocation.getter(#attachedDatabase),
        ),
      ) as _i2.AppDatabase);

  @override
  _i3.DatabaseConnection get connection => (super.noSuchMethod(
        Invocation.getter(#connection),
        returnValue: _FakeDatabaseConnection_1(
          this,
          Invocation.getter(#connection),
        ),
      ) as _i3.DatabaseConnection);

  @override
  _i3.SqlTypes get typeMapping => (super.noSuchMethod(
        Invocation.getter(#typeMapping),
        returnValue: _i7.dummyValue<_i3.SqlTypes>(
          this,
          Invocation.getter(#typeMapping),
        ),
      ) as _i3.SqlTypes);

  @override
  _i3.DriftDatabaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeDriftDatabaseOptions_2(
          this,
          Invocation.getter(#options),
        ),
      ) as _i3.DriftDatabaseOptions);

  @override
  _i3.QueryExecutor get executor => (super.noSuchMethod(
        Invocation.getter(#executor),
        returnValue: _FakeQueryExecutor_3(
          this,
          Invocation.getter(#executor),
        ),
      ) as _i3.QueryExecutor);

  @override
  _i4.StreamQueryStore get streamQueries => (super.noSuchMethod(
        Invocation.getter(#streamQueries),
        returnValue: _FakeStreamQueryStore_4(
          this,
          Invocation.getter(#streamQueries),
        ),
      ) as _i4.StreamQueryStore);

  @override
  _i3.DatabaseConnectionUser get resolvedEngine => (super.noSuchMethod(
        Invocation.getter(#resolvedEngine),
        returnValue: _FakeDatabaseConnectionUser_5(
          this,
          Invocation.getter(#resolvedEngine),
        ),
      ) as _i3.DatabaseConnectionUser);

  @override
  _i2.$ClientTableTable get clientTable => (super.noSuchMethod(
        Invocation.getter(#clientTable),
        returnValue: _Fake$ClientTableTable_6(
          this,
          Invocation.getter(#clientTable),
        ),
      ) as _i2.$ClientTableTable);

  @override
  _i5.Future<int> insertClient(_i8.Client? client) => (super.noSuchMethod(
        Invocation.method(
          #insertClient,
          [client],
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<List<_i8.Client>> getClients() => (super.noSuchMethod(
        Invocation.method(
          #getClients,
          [],
        ),
        returnValue: _i5.Future<List<_i8.Client>>.value(<_i8.Client>[]),
      ) as _i5.Future<List<_i8.Client>>);

  @override
  _i5.Future<bool> updateClient(_i8.Client? client) => (super.noSuchMethod(
        Invocation.method(
          #updateClient,
          [client],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<int> deleteClient(int? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteClient,
          [id],
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<List<_i8.Client>> searchClients(String? query) =>
      (super.noSuchMethod(
        Invocation.method(
          #searchClients,
          [query],
        ),
        returnValue: _i5.Future<List<_i8.Client>>.value(<_i8.Client>[]),
      ) as _i5.Future<List<_i8.Client>>);

  @override
  _i5.Stream<T> createStream<T extends Object>(
          _i4.QueryStreamFetcher<T>? stmt) =>
      (super.noSuchMethod(
        Invocation.method(
          #createStream,
          [stmt],
        ),
        returnValue: _i5.Stream<T>.empty(),
      ) as _i5.Stream<T>);

  @override
  T alias<T, D>(
    _i3.ResultSetImplementation<T, D>? table,
    String? alias,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #alias,
          [
            table,
            alias,
          ],
        ),
        returnValue: _i7.dummyValue<T>(
          this,
          Invocation.method(
            #alias,
            [
              table,
              alias,
            ],
          ),
        ),
      ) as T);

  @override
  void markTablesUpdated(Iterable<_i3.TableInfo<_i3.Table, dynamic>>? tables) =>
      super.noSuchMethod(
        Invocation.method(
          #markTablesUpdated,
          [tables],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyUpdates(Set<_i3.TableUpdate>? updates) => super.noSuchMethod(
        Invocation.method(
          #notifyUpdates,
          [updates],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Stream<Set<_i3.TableUpdate>> tableUpdates(
          [_i3.TableUpdateQuery? query = const _i3.TableUpdateQuery.any()]) =>
      (super.noSuchMethod(
        Invocation.method(
          #tableUpdates,
          [query],
        ),
        returnValue: _i5.Stream<Set<_i3.TableUpdate>>.empty(),
      ) as _i5.Stream<Set<_i3.TableUpdate>>);

  @override
  _i5.Future<T> doWhenOpened<T>(
          _i5.FutureOr<T> Function(_i3.QueryExecutor)? fn) =>
      (super.noSuchMethod(
        Invocation.method(
          #doWhenOpened,
          [fn],
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #doWhenOpened,
                  [fn],
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_7<T>(
              this,
              Invocation.method(
                #doWhenOpened,
                [fn],
              ),
            ),
      ) as _i5.Future<T>);

  @override
  _i3.InsertStatement<T, D> into<T extends _i3.Table, D>(
          _i3.TableInfo<T, D>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #into,
          [table],
        ),
        returnValue: _FakeInsertStatement_8<T, D>(
          this,
          Invocation.method(
            #into,
            [table],
          ),
        ),
      ) as _i3.InsertStatement<T, D>);

  @override
  _i3.UpdateStatement<Tbl, R> update<Tbl extends _i3.Table, R>(
          _i3.TableInfo<Tbl, R>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [table],
        ),
        returnValue: _FakeUpdateStatement_9<Tbl, R>(
          this,
          Invocation.method(
            #update,
            [table],
          ),
        ),
      ) as _i3.UpdateStatement<Tbl, R>);

  @override
  _i3.SimpleSelectStatement<T, R> select<T extends _i3.HasResultSet, R>(
    _i3.ResultSetImplementation<T, R>? table, {
    bool? distinct = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #select,
          [table],
          {#distinct: distinct},
        ),
        returnValue: _FakeSimpleSelectStatement_10<T, R>(
          this,
          Invocation.method(
            #select,
            [table],
            {#distinct: distinct},
          ),
        ),
      ) as _i3.SimpleSelectStatement<T, R>);

  @override
  _i3.JoinedSelectStatement<T, R> selectOnly<T extends _i3.HasResultSet, R>(
    _i3.ResultSetImplementation<T, R>? table, {
    bool? distinct = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectOnly,
          [table],
          {#distinct: distinct},
        ),
        returnValue: _FakeJoinedSelectStatement_11<T, R>(
          this,
          Invocation.method(
            #selectOnly,
            [table],
            {#distinct: distinct},
          ),
        ),
      ) as _i3.JoinedSelectStatement<T, R>);

  @override
  _i3.Selectable<_i3.TypedResult> selectExpressions(
          Iterable<_i3.Expression<Object>>? columns) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectExpressions,
          [columns],
        ),
        returnValue: _FakeSelectable_12<_i3.TypedResult>(
          this,
          Invocation.method(
            #selectExpressions,
            [columns],
          ),
        ),
      ) as _i3.Selectable<_i3.TypedResult>);

  @override
  _i3.DeleteStatement<T, D> delete<T extends _i3.Table, D>(
          _i3.TableInfo<T, D>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [table],
        ),
        returnValue: _FakeDeleteStatement_13<T, D>(
          this,
          Invocation.method(
            #delete,
            [table],
          ),
        ),
      ) as _i3.DeleteStatement<T, D>);

  @override
  _i5.Future<int> customUpdate(
    String? query, {
    List<_i3.Variable<Object>>? variables = const [],
    Set<_i3.ResultSetImplementation<dynamic, dynamic>>? updates,
    _i3.UpdateKind? updateKind,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customUpdate,
          [query],
          {
            #variables: variables,
            #updates: updates,
            #updateKind: updateKind,
          },
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<int> customInsert(
    String? query, {
    List<_i3.Variable<Object>>? variables = const [],
    Set<_i3.ResultSetImplementation<dynamic, dynamic>>? updates,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customInsert,
          [query],
          {
            #variables: variables,
            #updates: updates,
          },
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);

  @override
  _i5.Future<List<_i3.QueryRow>> customWriteReturning(
    String? query, {
    List<_i3.Variable<Object>>? variables = const [],
    Set<_i3.ResultSetImplementation<dynamic, dynamic>>? updates,
    _i3.UpdateKind? updateKind,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customWriteReturning,
          [query],
          {
            #variables: variables,
            #updates: updates,
            #updateKind: updateKind,
          },
        ),
        returnValue: _i5.Future<List<_i3.QueryRow>>.value(<_i3.QueryRow>[]),
      ) as _i5.Future<List<_i3.QueryRow>>);

  @override
  _i3.Selectable<_i3.QueryRow> customSelect(
    String? query, {
    List<_i3.Variable<Object>>? variables = const [],
    Set<_i3.ResultSetImplementation<dynamic, dynamic>>? readsFrom = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customSelect,
          [query],
          {
            #variables: variables,
            #readsFrom: readsFrom,
          },
        ),
        returnValue: _FakeSelectable_12<_i3.QueryRow>(
          this,
          Invocation.method(
            #customSelect,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
      ) as _i3.Selectable<_i3.QueryRow>);

  @override
  _i3.Selectable<_i3.QueryRow> customSelectQuery(
    String? query, {
    List<_i3.Variable<Object>>? variables = const [],
    Set<_i3.ResultSetImplementation<dynamic, dynamic>>? readsFrom = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customSelectQuery,
          [query],
          {
            #variables: variables,
            #readsFrom: readsFrom,
          },
        ),
        returnValue: _FakeSelectable_12<_i3.QueryRow>(
          this,
          Invocation.method(
            #customSelectQuery,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
      ) as _i3.Selectable<_i3.QueryRow>);

  @override
  _i5.Future<void> customStatement(
    String? statement, [
    List<dynamic>? args,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #customStatement,
          [
            statement,
            args,
          ],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<T> transaction<T>(
    _i5.Future<T> Function()? action, {
    bool? requireNew = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #transaction,
          [action],
          {#requireNew: requireNew},
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #transaction,
                  [action],
                  {#requireNew: requireNew},
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_7<T>(
              this,
              Invocation.method(
                #transaction,
                [action],
                {#requireNew: requireNew},
              ),
            ),
      ) as _i5.Future<T>);

  @override
  _i5.Future<T> exclusively<T>(_i5.Future<T> Function()? action) =>
      (super.noSuchMethod(
        Invocation.method(
          #exclusively,
          [action],
        ),
        returnValue: _i7.ifNotNull(
              _i7.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #exclusively,
                  [action],
                ),
              ),
              (T v) => _i5.Future<T>.value(v),
            ) ??
            _FakeFuture_7<T>(
              this,
              Invocation.method(
                #exclusively,
                [action],
              ),
            ),
      ) as _i5.Future<T>);

  @override
  _i5.Future<void> batch(_i5.FutureOr<void> Function(_i3.Batch)? runInBatch) =>
      (super.noSuchMethod(
        Invocation.method(
          #batch,
          [runInBatch],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i3.GenerationContext $write(
    _i3.Component? component, {
    bool? hasMultipleTables,
    int? startIndex,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$write,
          [component],
          {
            #hasMultipleTables: hasMultipleTables,
            #startIndex: startIndex,
          },
        ),
        returnValue: _FakeGenerationContext_14(
          this,
          Invocation.method(
            #$write,
            [component],
            {
              #hasMultipleTables: hasMultipleTables,
              #startIndex: startIndex,
            },
          ),
        ),
      ) as _i3.GenerationContext);

  @override
  _i3.GenerationContext $writeInsertable(
    _i3.TableInfo<_i3.Table, dynamic>? table,
    _i3.Insertable<dynamic>? insertable, {
    int? startIndex,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$writeInsertable,
          [
            table,
            insertable,
          ],
          {#startIndex: startIndex},
        ),
        returnValue: _FakeGenerationContext_14(
          this,
          Invocation.method(
            #$writeInsertable,
            [
              table,
              insertable,
            ],
            {#startIndex: startIndex},
          ),
        ),
      ) as _i3.GenerationContext);

  @override
  String $expandVar(
    int? start,
    int? amount,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #$expandVar,
          [
            start,
            amount,
          ],
        ),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.method(
            #$expandVar,
            [
              start,
              amount,
            ],
          ),
        ),
      ) as String);

  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}