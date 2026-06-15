import SQLite3

var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

sqlite3_exec(db, "create table inv(item text primary key, qty integer)", nil, nil, nil)
sqlite3_exec(db, "insert into inv values('apple', 5)", nil, nil, nil)

var ins: OpaquePointer?
sqlite3_prepare_v2(
    db,
    "insert into inv(item, qty) values(?, ?) on conflict(item) do update set qty=qty+excluded.qty",
    -1, &ins, nil)
for (item, qty) in [("apple", 5), ("banana", 3)] {
    sqlite3_bind_text(ins, 1, item, -1, TRANSIENT)
    sqlite3_bind_int(ins, 2, Int32(qty))
    sqlite3_step(ins)
    sqlite3_reset(ins)
}
sqlite3_finalize(ins)

var q: OpaquePointer?
sqlite3_prepare_v2(db, "select item, qty from inv order by item", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(String(cString: sqlite3_column_text(q, 0))) \(sqlite3_column_int(q, 1))")
}
sqlite3_finalize(q)
sqlite3_close(db)
