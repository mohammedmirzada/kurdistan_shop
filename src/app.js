const path = require('path')
const express = require('express')
const hbs = require('hbs')
var db = require('./db');
var functions = require('./functions');
const { result } = require('lodash');
const app = express()

// Define paths for Express config
const publicDirectoryPath = path.join(__dirname, '../public')
const viewsPath = path.join(__dirname, '../views')
const partialsPath = path.join(__dirname, '../main')

// Setup static directory to serve
app.use(express.static(publicDirectoryPath))

// Setup handlebars engine and views location
app.set('view engine', 'hbs')
app.set('views', viewsPath)
hbs.registerPartials(partialsPath)

// ============ START API =========== //
app.get('/api', (req, res) => {
    switch(req.query.method){
        case "add":
            switch(req.query.tb){
                case "stores":
                    var name = req.query.name
                    var logo = req.query.logo
                    if(name){
                        db.AddStore(name, logo, function(result){
                            if(result[0] == true){
                                functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1],'inserted_id':result[2]}))
                            }else{
                                functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                            }
                        });
                    }else{
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'Name field is missing.'}))
                    }
                break;
                case "categories":
                    var name = req.query.name
                    var image = req.query.image
                    var store_id = req.query.store_id
                    if(name && store_id){
                        db.AddCategory(name, image, store_id, function(result){
                            if(result[0] == true){
                                functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1],'inserted_id':result[2]}))
                            }else{
                                functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                            }
                        });
                    }else{
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'Name or Store is missing.'}))
                    }
                break;
                case "products":
                    var name = req.query.name
                    var price = req.query.price
                    var image = req.query.image
                    var category_id = req.query.category_id
                    if(!name){
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'You have missed Name field.'}))
                    }else if(!price){
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'You have missed Price field.'}))
                    }else if(!category_id){
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'You have missed Category field.'}))
                    }else{
                        db.AddProduct(name, price, image, category_id, function(result){
                            if(result[0] == true){
                                functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1],'inserted_id':result[2]}))
                            }else{
                                functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                            }
                        });
                    }
                break;
                default:
                    functions.SendJSON(res, JSON.stringify({'msg':'Bad Request'}))
            }
        break;
        case "change":
            switch(req.query.tb){
                case "stores":
                    var name = req.query.name
                    var logo = req.query.logo
                    db.UpdateStore(name, logo, function(result){
                        if(result[0] == true){
                            functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1]}))
                        }else{
                            functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                        }
                    });
                break;
                case "categories":
                    var name = req.query.name
                    var image = req.query.image
                    var store_id = req.query.store_id
                    db.UpdateCategory(name, image, store_id, function(result){
                        if(result[0] == true){
                            functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1]}))
                        }else{
                            functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                        }
                    });
                break;
                case "products":
                    var name = req.query.name
                    var price = req.query.price
                    var image = req.query.image
                    var category_id = req.query.category_id
                    var where = req.query.where
                    db.UpdateProduct(name, price, image, category_id, where, function(result){
                        if(result[0] == true){
                            functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1]}))
                        }else{
                            functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                        }
                    });
                break;
                default:
                    functions.SendJSON(res, JSON.stringify({'msg':'Bad Request'}))
            }
        break;
        case "delete":
            var tb = req.query.tb
            var id = req.query.id
            if(tb && id){
                db.DeleteItem(tb, id, function(result){
                    if(result[0] == true){
                        functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1]}))
                    }else{
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                    }
                });
            }else{
                functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'You have missed Table name or row ID.'}))
            }
        break;
        case "get":
            var tb = req.query.tb
            if(tb){
                var where = req.query.where
                var limit = req.query.limit
                db.GetData(tb, where, limit, function(result){
                    if(result[0] == true){
                        functions.SendJSON(res, JSON.stringify({'msg':'OK','sql':result[1],'result':result[2], 'rows': result[2].length}))
                    }else{
                        functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':result[1]}))
                    }
                });              
            }else{
                functions.SendJSON(res, JSON.stringify({'msg':'Bad Request','error':'Please select a table.'}))
            }
        break;
        default:
            functions.NormalRedirect(res, 'api', "API")
    }
})
// ============ END API =========== //

// ============ START ROUTING =========== //
app.get('', (req, res) => {
    res.render('index', {
        title: 'Home'
    })
})

app.get('/stores', (req, res) => {
    res.render('stores', {
        title: 'Stores'
    })
})

app.get('/categories', (req, res) => {
    res.render('categories', {
        title: 'Categories'
    })
})

app.get('/products', (req, res) => {
    res.render('products', {
        title: 'Products'
    })
})
// ============ END ROUTING =========== //

//NOT FOUND
app.get('*', (req, res) => {
    res.render('404', {
        title: '404',
        msg: 'Page not found'
    })
})

//LISTENING
app.listen(3000, () => {
    console.log('Server is up on port 3000.')
})