// const express = require('express');
// const app = express();

// app.use(function (req, res, next) {
//     console.log("Middleware Working!!!");
//     next();
// });

// app.get('/', function (req, res) {
//     res.send('Hello World');
// });

// app.get('/profile', function (req, res) {
//     res.send('This is Tanmay');
// });

// app.listen(3000);

// ---------------------Error Handling in Middlewares-----------------------
const express = require('express');
const app = express();

// Normal Middleware
app.use(function (req, res, next) {
    console.log("Normal Middleware!!");
    next();
});

// Route 1
app.get('/safe', function (req, res) {
    res.send("Hello");
});

app.get('/danger', function (req, res, next) {
    const userDoesNotExits = true;

    if (userDoesNotExits) {
        const error = new Error('User Not Found!!'); s
        error.status = 400;
        return next(error);
    }
    res.send('Never Visible!');
});

app.get('/boom', function (req, res) {
    throw new Error('Something Crashed!!');
});

// Error Handling 
app.use((err, req, res, next) => {
    console.error('Error:', err.message);

    const status = err.status || 500;
    res.status(status).json({
        error: {
            message: err.message,
            status: status,
        }
    });
});

app.listen(3000, () => console.log('Server on port 3000'));