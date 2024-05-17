const {PrismaClient} = require('@prisma/client')
const prisma = new PrismaClient

function getAllComptes() {
    return prisma.compte.findMany()//findMany recuppere tout les info

}

function getUsercomptes(id){
    return prisma.compte.findUnique( {where : {id}})//findUnique recuper uniquement une donneé 
}


module.exports = {
    getAllComptes,
    getUsercomptes
    
}