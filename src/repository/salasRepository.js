import conexao from './connections.js';

export async function listarSalasMaior(){

    const command =`select ID_SALA, DS_SALAS, DS_APRESENTACAO, DS_ANDAR,NR_PESSOAS,NR_AVALIACAO
		from tb_salas
        ORDER BY NR_PESSOAS desc`;

    const [resp]=await conexao.query(command,[]);

    return (resp);
}

export async function listarSalasMenor(){

    const command =`select ID_SALA, DS_SALAS, DS_APRESENTACAO, DS_ANDAR,NR_PESSOAS,NR_AVALIACAO
		from tb_salas
        ORDER BY NR_PESSOAS`;

    const [resp]=await conexao.query(command,[]);

    return (resp);
}
