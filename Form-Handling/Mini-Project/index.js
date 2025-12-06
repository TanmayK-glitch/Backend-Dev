const express = require('express');
const app = express();
const path = require('path');

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use(express.static(path.join(__dirname, 'Public')));
app.set('view engine', 'ejs');

app.get('/', function(req, res){
    res.render('index');
});

app.get('/profile/:username', function(req, res){
    res.send(`Nikal MC, ${req.params.username}`);
});

app.get('/profile/:username/:age', function(req, res){
    res.send(`Nikal MC, ${req.params.username}, Age = ${req.params.age}`);
});

app.get('/profile/tanmay', function(req, res){
    res.send('Tanmay Profile!!');
});



app.listen(3000);