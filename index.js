const server = require('./server/user');
const PORT = 5000;


server.listen(PORT, () => console.log(`Running on port ${PORT}`));