import SQLite3

var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

sqlite3_exec(db, "create table t(n integer)", nil, nil, nil)

sqlite3_exec(db, "begin", nil, nil, nil)
var ins: OpaquePointer?
sqlite3_prepare_v2(db, "insert into t values(?)", -1, &ins, nil)
for n in 1...1000 {
    sqlite3_bind_int(ins, 1, Int32(n))
    sqlite3_step(ins)
    sqlite3_reset(ins)
}
sqlite3_finalize(ins)
sqlite3_exec(db, "commit", nil, nil, nil)

var q: OpaquePointer?
sqlite3_prepare_v2(db, "select count(*) from t", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(sqlite3_column_int(q, 0))")
}
sqlite3_finalize(q)
sqlite3_close(db)
