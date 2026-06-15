import SQLite3

var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

sqlite3_exec(db, "create table t(amount integer)", nil, nil, nil)

var ins: OpaquePointer?
sqlite3_prepare_v2(db, "insert into t values(?)", -1, &ins, nil)
for amount in [10, 20, 30, 40, 50] {
    sqlite3_bind_int(ins, 1, Int32(amount))
    sqlite3_step(ins)
    sqlite3_reset(ins)
}
sqlite3_finalize(ins)

var q: OpaquePointer?
sqlite3_prepare_v2(db, "select count(*),sum(amount),min(amount),max(amount) from t", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print(sqlite3_column_int(q, 0))
    print(sqlite3_column_int(q, 1))
    print(sqlite3_column_int(q, 2))
    print(sqlite3_column_int(q, 3))
}
sqlite3_finalize(q)
sqlite3_close(db)
