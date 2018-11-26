Grupo Joedyson/Cleber/Jonatan/Adriano - 
Disciplina: BD1


01-CONSULTA SIMPLES(QUANTIDADE DE FUNCIONARIOS MASCULINOS)

  SELECT COUNT(SEXO) as HOMENS
        FROM FUNCIONARIO
        WHERE SEXO = 'Masculino'


******************************************************************
        
        
02-CONSULTA SIMPLES(QUANTIDADE DE FUNCIONARIOS FEMININOS)
    
  SELECT COUNT(SEXO)MULHER
        FROM FUNCIONARIO
        WHERE SEXO = 'Feminino'


******************************************************************

03-CONSULTA SIMPLES(SOMA TOTAL DE EXAMES VENDIDOS)

    SELECT SUM(QTD_VENDIDA)TOTAL_EXAMES 
        FROM ADMINISTRATIVO


******************************************************************
                       
04-CONSULTA SIMPLES(FUNCIONARIO MAIS VELHO)

      SELECT  MAX(IDADE)
            FROM FUNCIONARIO
            


******************************************************************
05-CONSULTA SIMPLES(FUNCIONARIO MAIS NOVO)
        SELECT  MIN(IDADE)
            FROM FUNCIONARIO


******************************************************************
06-CONSULTA SIMPLES(QUANTIDADE DE PACIENTES QUE TEM PLANO DE SA�DE)
     
     SELECT  COUNT(PLANO_DE_SAUDE_COD)
            FROM PACIENTE
            WHERE PLANO_DE_SAUDE_COD IS NOT NULL


******************************************************************
            
07-CONSULTA SIMPLES(PACIENTES QUE N�O TEM PLANO DE SA�DE)
     
       SELECT  *
            FROM PACIENTE
            WHERE PLANO_DE_SAUDE_COD IS NULL



******************************************************************
                     
08-CONSULTA SIMPES(PACIENTE MAIS VELHO)

        SELECT MAX(IDADE)
            FROM PACIENTE



******************************************************************


09-CONSULTA SIMPES(PACIENTE MAIS NOVO)

        SELECT MIN(IDADE)
            FROM PACIENTE



******************************************************************

10- CONSULTA SIMPLES(QUAL AS ESPECIALIZA��ES DO M�DICO COM CRM IGUAL A 440)

        SELECT ESPECIALIZACAO
                FROM ESPECIALIZACAO
                WHERE MEDICO_CRM = 440



******************************************************************
********************  CONSULTAS COMPLEXAS   **********************
******************************************************************
                    
01 - CONSULTA COMPLEXA(M�DIA DE LUCRO POR EXAME DE VENDA POR TIPO DE EXAME)

        SELECT AVG(E.PRECO* A.QTD_VENDIDA) MEDIA_LUCRO_POR_EXAME,
                    E.NOME,
                    E.COD
                FROM EXAME E
                JOIN VENDA V
                ON E.COD = V.COD_EXAME
                JOIN ADMINISTRATIVO A
                ON V.CPF_ADMINISTRATIVO = A.CPF_FUNCIONARIO
                GROUP BY E.COD, E.NOME
******************************************************************
                
02-CONSULTA COMPLEXA(VALOR TOTAL ARRECADADO COM OS EXAMES VENDIDOS)
   
    SELECT SUM(E.PRECO)*SUM(A.QTD_VENDIDA) TOTAL_VENDIDO
        FROM EXAME E
        JOIN VENDA V
        ON E.COD = V.COD_EXAME
        JOIN ADMINISTRATIVO A
        ON V.CPF_ADMINISTRATIVO = A.CPF_FUNCIONARIO

******************************************************************

03-CONSULTA COMPLEXA(TODOS OS EXAMES SOLICITADOS PELA M�DICO Tiago Dias Barbosa)

        SELECT  M.NOME,
                E.NOME
                FROM MEDICO M
                JOIN EXAME E
                ON M.CRM = E.CRM_MEDICO
                WHERE M.NOME = 'Tiago Dias Barbosa'

******************************************************************

04-CONSULTA COMPLEXA(PACIENTES QUE MORAM EM PERNAMBUCO)
     
       SELECT   P.NOME,
                E.RUA,
                E.BAIRRO,
                E.CIDADE,
                E.ESTADO
            FROM PACIENTE P
            JOIN ENDERECO E
            ON P.ENDERECO_COD = E.COD
            WHERE E.ESTADO = 'Pernambuco'


******************************************************************

                
05 - CONSULTA COMPLEXA(QUAL A MEDIA DE VENDAS POR FUNCIONARIO ADMINISTRATIVO)

        SELECT AVG(A.QTD_VENDIDA) MEDIA_VENDAS,
                F.NOME
                FROM ADMINISTRATIVO A
                JOIN FUNCIONARIO F
                ON A.CPF_FUNCIONARIO = F.CPF
                JOIN VENDA V
                ON V.CPF_ADMINISTRATIVO = A.CPF_FUNCIONARIO
                GROUP BY F.NOME
                ORDER BY MEDIA_VENDAS ASC


******************************************************************

06 - CONSULTA COMPLEXA(PACIENTES QUE POSSUEM O PLANO DA AMIL)

SELECT P.NOME,P.IDADE,S.NOME
    FROM PACIENTE P 
    JOIN PLANO_DE_SAUDE S 
    ON P.PLANO_DE_SAUDE_COD = S.COD
    WHERE S.NOME = 'AMIL';

******************************************************************

07 - CONSULTA COMPLEXA(Qual a ESPECIALIZACAO do MEDICO Emily Pereira Barbosa);

SELECT E.ESPECIALIZACAO, M.NOME
    FROM ESPECIALIZACAO E 
    JOIN MEDICO M  
    ON E.MEDICO_CRM = M.CRM
    WHERE M.NOME = 'Emily Pereira Barbosa';

******************************************************************

08 - CONSULTA COMPLEXA(Quais EXAMES o PACIENTE com o cpf 220330740 realizou);

SELECT E.NOME, P.NOME
    FROM EXAME E 
    JOIN PACIENTE P  
    ON E.CPF_PACIENTE = P.CPF
    WHERE P.CPF = '220330740';

******************************************************************

09 - CONSULTA COMPLEXA(Quais EXAMES o MEDICO com o CRM 200 pediu ao laboratorio com 
                        valor acima de 8,00 reais);

SELECT E.NOME, M.NOME
    FROM EXAME E 
    JOIN MEDICO M  
    ON E.CRM_MEDICO = M.CRM
    WHERE M.CRM = '200' AND E.PRECO >= '8,00';


******************************************************************

10 - CONSULTA COMPLEXA(Todos os FUNCIONARIO que tem como FORMACAO enfermagem);

SELECT F.NOME, F.CPF,T.FORMACAO
    FROM TECNICO T 
    JOIN FUNCIONARIO F  
    ON T.CPF_FUNCIONARIO = F.CPF
    WHERE T.FORMACAO = 'Enfermeiro';        

******************************************************************

11 - CONSULTA COMPLEXA(qual código e nome do exame, crm e nome do médico que solitou exame à paciente 'Mariana Correia Souza');

SELECT E.COD AS COD_EXAME, 
        E.NOME AS EXAME,
        M.NOME AS MÉDICO,
        M.CRM
FROM EXAME E
JOIN MEDICO M
ON M.CRM = E.CRM_MEDICO
JOIN PACIENTE P
ON P.CPF = E.CPF_PACIENTE
WHERE P.NOME = 'Mariana Correia Souza';

******************************************************************

12 - CONSULTA COMPLEXA(Qual o nome do técnico responsável pelo exame 34);

SELECT F.NOME
FROM VENDA V
JOIN EXAME E
ON V.COD_EXAME = E.COD
JOIN TECNICO T
ON V.CPF_TECNICO = T.CPF_FUNCIONARIO
JOIN FUNCIONARIO F
ON F.CPF = T.CPF_FUNCIONARIO
WHERE E.COD = 34;

******************************************************************

13 - CONSULTA COMPLEXA(Quantos pacientes TEM plano de saude em cada cidade);

SELECT COUNT (P.CPF) TOTAL,
            E.CIDADE
FROM PACIENTE P
JOIN PLANO_DE_SAUDE S
ON S.COD = P.PLANO_DE_SAUDE_COD
JOIN ENDERECO E
ON E.COD = P.ENDERECO_COD
GROUP BY E.CIDADE;

******************************************************************

14 - CONSULTA COMPLEXA(Quais funcionários técnicos trabalham no departamento de T.I);

SELECT F.NOME
FROM FUNCIONARIO F
JOIN TECNICO T
ON F.CPF = T.CPF_FUNCIONARIO
JOIN DEPARTAMENTO D
ON D.COD = T.COD_DEPARTAMENTO
WHERE D.NOME = 'T.I';

******************************************************************

15 - CONSULTA COMPLEXA(Qual o total de exames vendidos);

SELECT SUM(A.QTD_VENDIDA) TOTAL_DE_EXAMES_VENDIDOS
FROM VENDA V
JOIN ADMINISTRATIVO A
ON V.CPF_ADMINISTRATIVO = A.CPF_FUNCIONARIO;