/* 1 - Selecione todos os pacientes juntamente com os detalhes 
dos seus tutores, incluindo nome, endereço e número de telefone do tutor. */

SELECT p.NOME, t.NOME, t.ENDERECO, t.TELEFONE
	FROM PACIENTE p 
  LEFT JOIN TUTOR t ON t.ID_TUTOR = p.ID_TUTOR 


/* 2 - Selecione apenas os pacientes que têm um tutor associado, 
trazendo todos os detalhes dos pacientes e dos seus tutores. */

SELECT p.*, t.*
	FROM PACIENTE p 
  INNER JOIN TUTOR t ON t.ID_TUTOR = p.ID_TUTOR 


/* 3 - Selecione todos os tutores juntamente com os detalhes 
dos seus pacientes, incluindo nome, espécie e raça do paciente. */

SELECT t.NOME, p.NOME, p.ESPECIE, p.RACA 
	FROM TUTOR t 
  LEFT JOIN PACIENTE p ON t.ID_TUTOR = p.ID_TUTOR 


/* 4 - Selecione apenas os tutores que têm pacientes associados, 
trazendo todos os detalhes dos tutores e dos seus pacientes. */

SELECT t.NOME, p.NOME, p.ESPECIE, p.RACA 
	FROM TUTOR t 
  INNER JOIN PACIENTE p ON t.ID_TUTOR = p.ID_TUTOR 


/* 5 - Selecione todos os medicamentos juntamente com os detalhes das 
suas prescrições, incluindo a data da prescrição e a quantidade prescrita. */

SELECT m.nome, r.data_emissao, i.quantidade, i.dosagem
	FROM ITENSRECEITA i
  LEFT JOIN MEDICAMENTOS m ON i.ID_MEDICAMENTO = m.ID_MEDICAMENTO
  LEFT JOIN RECEITA r ON i.ID_RECEITA = r.ID_RECEITA 


/* 6 - Selecione apenas os medicamentos que foram prescritos, 
trazendo todos os detalhes dos medicamentos e das suas prescrições. */

SELECT m.nome, r.data_emissao, i.quantidade, i.dosagem
	FROM ITENSRECEITA i
  INNER JOIN MEDICAMENTOS m ON i.ID_MEDICAMENTO = m.ID_MEDICAMENTO
  INNER JOIN RECEITA r ON i.ID_RECEITA = r.ID_RECEITA 


/* 7 - Selecione todos os registros de prescrição juntamente com os detalhes 
dos pacientes associados, incluindo o nome e a espécie do paciente. */

SELECT r.DATA_EMISSAO, i.QUANTIDADE, i.DOSAGEM, p.nome, p.ESPECIE 
	FROM RECEITA r 
  LEFT JOIN AGENDAMENTO a ON a.ID_AGENDAMENTO = r.ID_AGENDAMENTO
  LEFT JOIN PACIENTE p ON p.ID_PACIENTE = a.ID_PACIENTE
  LEFT JOIN ITENSRECEITA i ON i.ID_RECEITA = r.ID_RECEITA 


/* 8 - Selecione apenas os registros de prescrição que estão associados a um paciente, 
trazendo todos os detalhes dos registros de prescrição e dos pacientes associados. */

SELECT r.DATA_EMISSAO
	   , i.QUANTIDADE
	   , i.DOSAGEM
	   , p.nome
	   , p.ESPECIE 
	FROM RECEITA r 
  INNER JOIN AGENDAMENTO a ON a.ID_AGENDAMENTO = r.ID_AGENDAMENTO
  INNER JOIN PACIENTE p ON p.ID_PACIENTE = a.ID_PACIENTE
  INNER JOIN ITENSRECEITA i ON i.ID_RECEITA = r.ID_RECEITA 


/* 9 - Selecione todos os registros de prescrição juntamente com os detalhes 
dos medicamentos associados, incluindo o nome e a dosagem do medicamento. */

SELECT i.QUANTIDADE, i.DOSAGEM, m.NOME, m.DESCRICAO, r.DATA_EMISSAO 
	FROM ITENSRECEITA i
  LEFT JOIN MEDICAMENTOS m ON m.ID_MEDICAMENTO = i.ID_MEDICAMENTO
  LEFT JOIN RECEITA r ON r.ID_RECEITA = i.ID_RECEITA


/* 10 - Selecione apenas os registros de prescrição que têm um medicamento associado, 
trazendo todos os detalhes dos registros de prescrição e dos medicamentos associados. */

SELECT i.QUANTIDADE, i.DOSAGEM, m.NOME, m.DESCRICAO, r.DATA_EMISSAO 
	FROM ITENSRECEITA i
  INNER JOIN MEDICAMENTOS m ON m.ID_MEDICAMENTO = i.ID_MEDICAMENTO
  INNER JOIN RECEITA r ON r.ID_RECEITA = i.ID_RECEITA













	
	
	
	
	
	
	
	
	
	
	
			
			
			
