import SQLite3

var db: OpaquePointer?
sqlite3_open(":memory:", &db)
sqlite3_exec(db, "create table t(n integer)", nil, nil, nil)

// First transaction: insert 1 and 2, then commit.
sqlite3_exec(db, "begin", nil, nil, nil)
sqlite3_exec(db, "insert into t values(1)", nil, nil, nil)
sqlite3_exec(db, "insert into t values(2)", nil, nil, nil)
sqlite3_exec(db, "commit", nil, nil, nil)

// Second transaction: insert 3, then roll back so it never persists.
sqlite3_exec(db, "begin", nil, nil, nil)
sqlite3_exec(db, "insert into t values(3)", nil, nil, nil)
sqlite3_exec(db, "rollback", nil, nil, nil)

var q: OpaquePointer?
sqlite3_prepare_v2(db, "select n from t order by n", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(sqlite3_column_int(q, 0))")
}
sqlite3_finalize(q)
sqlite3_close(db)
