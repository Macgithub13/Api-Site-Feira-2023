import { Router } from "express";
import { listarSalasMaior,listarSalasMenor } from '../repository/salasRepository.js';

const endpoints=Router();

endpoints.get('/salas/maior', async (req,resp) => {

    try{

        const respostaAPI=await listarSalasMaior();

        resp.send(respostaAPI);
    }

    catch(err){

        resp.status(404).send({

            erro:err.message
        });
    }
});

endpoints.get('/salas/menor', async (req,resp) => {

    try{

        const respostaAPI=await listarSalasMenor();

        resp.send(respostaAPI);
    }

    catch(err){

        resp.status(404).send({

            erro:err.message
        });
    }
});

export default endpoints;