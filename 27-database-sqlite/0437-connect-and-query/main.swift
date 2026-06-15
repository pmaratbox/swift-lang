import SQLite3

var db: OpaquePointer?
sqlite3_open(":memory:", &db)

var q: OpaquePointer?
sqlite3_prepare_v2(db, "select 42", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print(sqlite3_column_int(q, 0))
}
sqlite3_finalize(q)
sqlite3_close(db)
