import SQLite3

var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)

sqlite3_exec(db, "create table users(id integer, name text)", nil, nil, nil)

var ins: OpaquePointer?
sqlite3_prepare_v2(db, "insert into users values(?,?)", -1, &ins, nil)
for (id, name) in [(1, "alice"), (2, "bob"), (3, "carol")] {
    sqlite3_bind_int(ins, 1, Int32(id))
    sqlite3_bind_text(ins, 2, name, -1, TRANSIENT)
    sqlite3_step(ins)
    sqlite3_reset(ins)
}
sqlite3_finalize(ins)

sqlite3_exec(db, "update users set name='robert' where id=2", nil, nil, nil)
sqlite3_exec(db, "delete from users where id=1", nil, nil, nil)

var q: OpaquePointer?
sqlite3_prepare_v2(db, "select id,name from users order by id", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(sqlite3_column_int(q, 0)) \(String(cString: sqlite3_column_text(q, 1)))")
}
sqlite3_finalize(q)
sqlite3_close(db)
