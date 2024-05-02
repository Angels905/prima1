const {PrismaClient} = require('@prisma/client')
const prisma = new PrismaClient

function getAllUsers() {
    return prisma.livre.findMany()//findMany recuppere tout les info
}
function getUser(id){
    return prisma.livre.findUnique( {where : {id}})//findUnique recuper uniquement une donneé 
}
function getUserByNom_livre(nom_livre){
    return prisma.livre.find( {where : {nom_livre:"toto"}})
}

module.exports = {
    getAllUsers,
    getUser,//affiche 
    getUserByNom_livre
}