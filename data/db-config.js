const knex = require("knex")
const { development } = require("../knexfile")

const config = require("../knexfile")

module.exports = knex(config["development"])
