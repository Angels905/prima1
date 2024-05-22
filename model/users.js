const {PrismaClient} = require('@prisma/client')
const prisma = new PrismaClient

function getAllUsers() {
    return prisma.livre.findMany()//findMany recuppere tout les info

}

 function getUser(id){
     return prisma.livre.findUnique({where : {id}})//findUnique recuper uniquement une donneé 
 }



//requete delete livre
function deletcompte(id){//supprime par id
    return prisma.livre.delete( {where : {id}})
}

//rée livre
function addCompte(livre){
    return prisma.livre.create( {data: livre})
}

//modifier livre
function updateLivre(livre){
    return prisma.livre.update( {
        where:{id: livre.id},
        data: livre
    })
}

module.exports = {
    getAllUsers,
    getUser,//affiche 
    addCompte,
    deletcompte,//apple de la fonction
    updateLivre
}