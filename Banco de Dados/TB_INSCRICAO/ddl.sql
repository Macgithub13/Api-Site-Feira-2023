#Comandos Gerais

select ID_INSCRICAO, NM_NOME, DS_EMAIL,NR_TELEFONE,NM_BAIRRO,DS_SABENDO,DS_FOIALUNO,BT_VISITOU
		from tb_inscricao;

#---Comandos para HomePage-Adm---

#-Retornar quantidade de inscrições-
select ID_INSCRICAO, NM_NOME, NM_SER_CHAMADO,DS_EMAIL,NR_TELEFONE,NM_BAIRRO,DS_PREV_CHEGADA,DS_SABENDO,DS_FOIALUNO,BT_VISITOU
		from tb_inscricao;

#-Verificar visitantes inscritos que compareceram-

select ID_INSCRICAO, NM_NOME, NM_SER_CHAMADO,DS_EMAIL,NR_TELEFONE,NM_BAIRRO,DS_PREV_CHEGADA,DS_SABENDO,DS_FOIALUNO,BT_VISITOU
		from tb_inscricao
        WHERE BT_VISITOU=true;

#---Comandos para Validação de Inscrição - Adm---

update tb_inscricao
	set bt_visitou=true
    where id_inscricao=?;