import SQLite3
var db: OpaquePointer?
sqlite3_open(":memory:", &db)
let TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
sqlite3_exec(db, "create table products(id integer, sku text, price integer)", nil, nil, nil)
var ins: OpaquePointer?
sqlite3_prepare_v2(db, "insert into products values(?,?,?)", -1, &ins, nil)
for (id, sku, price) in [(1,"A",100),(2,"B",200),(3,"C",300)] {
    sqlite3_bind_int(ins, 1, Int32(id))
    sqlite3_bind_text(ins, 2, sku, -1, TRANSIENT)
    sqlite3_bind_int(ins, 3, Int32(price))
    sqlite3_step(ins); sqlite3_reset(ins)
}
sqlite3_finalize(ins)
sqlite3_exec(db, "create index idx_sku on products(sku)", nil, nil, nil)
var q: OpaquePointer?
sqlite3_prepare_v2(db, "select price from products where sku=?", -1, &q, nil)
sqlite3_bind_text(q, 1, "B", -1, TRANSIENT)
while sqlite3_step(q) == SQLITE_ROW {
    print("\(sqlite3_column_int(q,0))")
}
sqlite3_finalize(q)
sqlite3_close(db)
