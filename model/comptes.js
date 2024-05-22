const {PrismaClient} = require('@prisma/client')
const prisma = new PrismaClient

function getAllComptes(){
    return prisma.compte.findMany()
}

module.exports = {
    getAllComptes
}