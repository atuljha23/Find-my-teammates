const cds = require('@sap/cds')
const proxy = require("@sap/cds-odata-v2-adapter-proxy");
cds.on('bootstrap', (app) => {
    const cors = require('cors')
    app.use(cors())
    app.use(proxy())
    app.use((req, res, next) => {
        res.setHeader('Access-Control-Allow-Origin', '*');
        next();
    });
})
cds.on('listening', () => {
    
})

module.exports = cds.server // delegate to default server.js