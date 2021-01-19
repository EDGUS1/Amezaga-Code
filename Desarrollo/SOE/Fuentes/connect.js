const mysql = require('mysql')

module.exports = () => {
    return mysql.createConnection({
      host: 'den1.mysql6.gear.host',
      user: 'amezagacodesoe',
      password: 'Nj75ywFg_?rN',
      database: 'amezagacodesoe'
    });
  }
