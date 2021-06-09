module.exports = {
    Redirect: function (res,location) {
        res.writeHead(302, {
            'Location': location
        });
        res.end();
    },
    NormalRedirect: function (res, dir, title) {
        res.render(dir,{
            title: title
        })
    },
    SendJSON: function (res,result) {
        res.set({'Content-Type': 'application/json'});
        res.send(result)
    }
};