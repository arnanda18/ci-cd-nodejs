const express = require('express');
const app = express();

app.get('/', (req, res) => {
     res.send('Aplikasi berjalan pada runtime NodeJs Terbaru');
});

app.get('/admin', (req, res) => {
    res.send('Welcome to Admin Page :) hehe');
});

app.get('/user', (req, res) => {
    res.send('In Here Page user!');
})

module.exports = app
