const db = require("../../data/db-config")

function find() {
  return db("schemes")
}

function findById(id) {
  return db("schemes").where("id", id)
}

function findSteps(id) {
  return db("steps").where("scheme_id", id).orderBy("step_number")
}

function add(scheme) {
  return db("schemes").insert(scheme).then((id) => {
    return db("schemes").where("id", id)
  })
}

function update(changes, id) {
  console.log(id)
  return db("schemes").where("id", id).update(changes).then((newId) => {
    return db("schemes").where("id", newId)
  })
}

function remove(id) {
  return db("schemes").where("id", id).del()
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
}