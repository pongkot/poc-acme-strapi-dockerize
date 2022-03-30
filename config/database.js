const path = require('path');

module.exports = ({ env }) => ({
  defaultConnection: "default",
  connection: {
    client: "postgres",
    connection: {
      connectionString: env('PG_CONNECTION_STRING'),
    },
  }
});
