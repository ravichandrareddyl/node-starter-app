'use strict';

const express = require('express');
const helloWorld = require('./routes/helloWorld');
// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', helloWorld);

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);