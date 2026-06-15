import SQLite3
var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
sqlite3_exec(db, "create table sales(category text, amount integer)", nil, nil, nil)
var ins: OpaquePointer?
sqlite3_prepare_v2(db, "insert into sales values(?,?)", -1, &ins, nil)
for (category, amount) in [("a", 10), ("b", 20), ("a", 30), ("b", 5), ("a", 2)] {
    sqlite3_bind_text(ins, 1, category, -1, TRANSIENT)
    sqlite3_bind_int(ins, 2, Int32(amount))
    sqlite3_step(ins); sqlite3_reset(ins)
}
sqlite3_finalize(ins)
var q: OpaquePointer?
sqlite3_prepare_v2(db, "select category,sum(amount) from sales group by category order by category", -1, &q, nil)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(String(cString: sqlite3_column_text(q,0))) \(sqlite3_column_int(q,1))")
}
sqlite3_finalize(q)
sqlite3_close(db)
