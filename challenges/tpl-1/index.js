var jade = require('jade');
var fs = require('fs');
var express = require('express');

var app = express();
var port = 3000;

var main = fs.readFileSync('index.html');

app.use(express.urlencoded());
app.use("/public", express.static(__dirname + '/public'));

app.get('/', function (req, res) {
	res.setHeader('Content-Type', 'text/html');
	res.send(main);
});

app.post('/render', function (req, res) {
	var html = jade.render(req.body.template, {});
	res.setHeader('Content-Type', 'text/html');
	res.send(html);
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
