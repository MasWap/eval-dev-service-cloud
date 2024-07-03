const express = require('express');
const axios = require('axios');
const app = express();
const port = 3000;

const api2Url = 'http://api2:3001';

app.get('/test', async (req, res) => {
    try {
        const response = await axios.get(`${api2Url}/test`);
        res.send(`API1 received response from API2: ${response.data}`);
    } catch (error) {
        res.status(500).send('Error calling API2');
    }
});

app.listen(port, () => {
    console.log(`API1 listening at http://api2:${port}`);
});