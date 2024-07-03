const express = require('express');
const app = express();
const port = 3001;

app.get('/test', (req, res) => {
    res.send('Hello from API2');
});

app.listen(port, () => {
    console.log(`API2 listening at http://api1:${port}`);
});