module.exports = (srv) => {

    const { Users, UsertoDelete } = cds.entities('my.hotdeskapp')
    let idtoDelete;
    let userdeleteid;
    srv.before('POST', 'Users', async (req) => {
        const checkIn = req.data
        await srv.post(Users).entries({ userName: checkIn.userName, desk: checkIn.desk, building: checkIn.building, date: checkIn.date })
         idtoDelete = checkIn.ID
    })
    srv.after('POST', 'Users', async (req) => {
        await srv.delete(Users).where({ ID: idtoDelete })
    })

    srv.before('POST', 'UsertoDelete', async (req) => {
        const deleteRequest = req.data
        userdeleteid = deleteRequest.id
        console.log(userdeleteid)
    })
    srv.after('POST', 'UsertoDelete', async (req) => {
        await srv.delete(Users).where({ ID: userdeleteid })
         })
   
}