import SQLite3
var db: OpaquePointer?
sqlite3_open(":memory:", &db)
sqlite3_exec(db, "create table scores(value integer)", nil, nil, nil)
var ins: OpaquePointer?
sqlite3_prepare_v2(db, "insert into scores values(?)", -1, &ins, nil)
for value in [50, 90, 70, 30, 100, 20] {
    sqlite3_bind_int(ins, 1, Int32(value))
    sqlite3_step(ins); sqlite3_reset(ins)
}
sqlite3_finalize(ins)
var q: OpaquePointer?
sqlite3_prepare_v2(db, "select value from scores order by value desc limit 3", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print(sqlite3_column_int(q, 0))
}
sqlite3_finalize(q)
sqlite3_close(db)
