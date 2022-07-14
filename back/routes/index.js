const express = require('express');
const DAOTemple_MetaData = require('../build/contracts/DaoTemple.json')

const router = express.Router();

let abi;
let bytecode;

router.get('/', (req,res,next) => {
    res.send('test');
})

router.post('/daoTemple', (req,res,next) => {
    try {
        abi = DAOTemple_MetaData.abi;
        bytecode = DAOTemple_MetaData.bytecode;

        res.json({
            data : {
                abi,
                bytecode
            }
        })
    } catch (error) {
        console.log(error);
        res.send(error);
    }
})

module.exports = router;