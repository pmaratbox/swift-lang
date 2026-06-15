import SQLite3
var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
sqlite3_exec(db, "create table users(id integer, name text)", nil, nil, nil)
sqlite3_exec(db, "create table orders(user_id integer, item text)", nil, nil, nil)
var insU: OpaquePointer?
sqlite3_prepare_v2(db, "insert into users values(?,?)", -1, &insU, nil)
for (id, name) in [(1, "alice"), (2, "bob")] {
    sqlite3_bind_int(insU, 1, Int32(id))
    sqlite3_bind_text(insU, 2, name, -1, TRANSIENT)
    sqlite3_step(insU); sqlite3_reset(insU)
}
sqlite3_finalize(insU)
var insO: OpaquePointer?
sqlite3_prepare_v2(db, "insert into orders values(?,?)", -1, &insO, nil)
for (uid, item) in [(1, "book"), (2, "pen"), (1, "lamp")] {
    sqlite3_bind_int(insO, 1, Int32(uid))
    sqlite3_bind_text(insO, 2, item, -1, TRANSIENT)
    sqlite3_step(insO); sqlite3_reset(insO)
}
sqlite3_finalize(insO)
var q: OpaquePointer?
sqlite3_prepare_v2(db, "select u.name,o.item from orders o join users u on u.id=o.user_id order by u.name,o.item", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(String(cString: sqlite3_column_text(q, 0))) \(String(cString: sqlite3_column_text(q, 1)))")
}
sqlite3_finalize(q)
sqlite3_close(db)
