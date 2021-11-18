const { Client } = require("pg");

// TODO: Criando uma nova instancia do meu client
const client = new Client({
  host: "localhost",
  port: 5432,
  user: "root",
  password: "root",
  database: "productapi",
});

// TODO: Realizando a conexão com o DB
client.connect();

// TODO: Executa nossa instrução SQL
exports.query = async (query, values) => {
  const { rows } = await client.query(query, values);
  return rows;
};
