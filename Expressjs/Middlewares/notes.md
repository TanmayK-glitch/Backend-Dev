-- Middlewares
- Middleware is basically used to do some things before ROUTES.
- Before the main function (app.get) -> use this as Middleware -> app.use(function(req, res, next))..... takes 3 parameters
- Whenever we use app.get function for middleware after end of function, we call next(); so the code execution gets transfered to the next block of code.

-- Error Handling
- app.use(function(err, req, res, next)) -> structure of Code.
- 