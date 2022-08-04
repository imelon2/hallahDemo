const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');


const routes = require('./routes');


const app = express();

app.use(cors());
app.use(bodyParser.json());

app.set('port', process.env.PORT || 3001 );

app.use('/',routes);





app.use((req,res,next) => {
    res.status(404).send('Not Found');
})

app.use((err,req,res,next) => {
    res.status(500).send(err.message)
})

app.listen(app.get('port'), () => {
    console.log(app.get('port'), ' port start server');
})

module.exports = app;