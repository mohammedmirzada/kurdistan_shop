//CONNECTION
var mysql = require('mysql');
var conn = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "ks"
});
conn.connect(function(err) {
    if(err){
        console.log(err)
    }else{
        console.log("Connected!");
    }          
});

//CREATE STORE
function AddStore(name, logo=null, callback) {
    if(logo == null){
        var sql = "INSERT INTO stores (name) VALUES ('"+name+"')"
    }else{
        var sql = "INSERT INTO stores (name,logo) VALUES ('"+name+"','"+logo+"')"
    }
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Inserted", result.insertId]);
        }
    });
}

//CHANGE STORE
function UpdateStore(name, logo=null, callback) {
    if(logo == null){
        var sql = "UPDATE stores SET name = '"+name+"'";
    }else{
        var sql = "UPDATE stores SET name = '"+name+"', logo = '"+logo+"'";
    }
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Updated"]);
        }
    });
}

// CREATE CATEGORY
function AddCategory(name, image=null, store_id, callback) {
    if(image == null){
        var sql = "INSERT INTO categories (name,store_id) VALUES ('"+name+"','"+store_id+"')";
    }else{
        var sql = "INSERT INTO categories (name,image,store_id) VALUES ('"+name+"','"+image+"','"+store_id+"')";
    }
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Inserted", result.insertId]);
        }
    });
}

//CHANGE CATEGORY
function UpdateCategory(name, image=null, store_id, callback) {
    if(image == null){
        var sql = "UPDATE categories SET name = '"+name+"', store_id = '"+store_id+"'";
    }else{
        var sql = "UPDATE categories SET name = '"+name+"', image = '"+image+"', store_id = '"+store_id+"'";
    }
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Updated"]);
        }
    });
}

// ADD PRODUCT
function AddProduct(name, price, image=null, category_id, callback) {
    if(image == null){
        var sql = "INSERT INTO products (name,price,category_id) VALUES ('"+name+"','"+price+"','"+category_id+"')";
    }else{
        var sql = "INSERT INTO products (name,price,image,category_id) VALUES ('"+name+"','"+price+"','"+image+"','"+category_id+"')";
    }
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Inserted", result.insertId]);
        }
    });
}

//CHANGE PRODUCT
function UpdateProduct(name, price, image, category_id, where, callback) {
    var sql = "UPDATE products SET name = '"+name+"', price = '"+price+"', image = '"+image+"', category_id = '"+category_id+"' WHERE "+where;
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Updated"]);
        }
    });
}

// DELETE ITEM
function DeleteItem(tb_name, id, callback) {
    var sql = "DELETE FROM "+tb_name+" WHERE id="+id
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Deleted"]);
        }
    });
}

// GET AND COUNT DATA
function GetData(tb_name, where=null, limit=null, callback){
    if(where == null){
        if(limit == null){
            var sql = "SELECT * FROM "+tb_name+" ORDER BY id DESC";
        }else{
            var sql = "SELECT * FROM "+tb_name+" LIMIT " + limit;
        }
    }else{
        if(limit == null){
            var sql = "SELECT * FROM "+tb_name+" WHERE " + where + " ORDER BY id DESC";
        }else{
            var sql = "SELECT * FROM "+tb_name+" WHERE " + where + " LIMIT " + limit;
        }
    }
    conn.query(sql, function (err, result) {
        if(err){
            return callback([false, err]);
        }else{
            return callback([true, "Selected", result, result.length]);
        }
    });
}
module.exports = {
    AddStore,
    UpdateStore,
    AddCategory,
    UpdateCategory,
    AddProduct,
    UpdateProduct,
    DeleteItem,
    GetData
};