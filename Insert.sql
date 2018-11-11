CREATE SEQUENCE SEQ_PLANO
 START WITH     1
 INCREMENT BY   1
 MAXVALUE 20
 NOCACHE
 NOCYCLE;
 
 CREATE SEQUENCE SEQ_ENDERECO
 START WITH     1
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
  
CREATE SEQUENCE SEQ_PACIENTE
 START WITH     220330440
 INCREMENT BY   100
 NOCACHE
 NOCYCLE;

 
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'GOLDEN_CROSS');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'AMIL');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'UNIMED');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'NOTREDAME');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'GAMA');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'SMILES');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'BRADESCO');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'CAIXA_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'NEXT_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'PLENA_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'BLUE_MED');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'BIOVIDA_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'ALLIANZ_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'PORTO_SEGURO_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'PREVENT_SENIOR');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'INTERCLINICAS');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'SANTA_HELENA_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'SAO_MIGUEL_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'MED_TOUR_SAUDE');
INSERT INTO PLANO_DE_SAUDE VALUES(SEQ_PLANO.NEXTVAL, 'AMEPLAN_SAUDE');

INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Caruaru', 'Pernambuco', 'Universitário', 'Av. Portugal');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Recife', 'Pernambuco', 'Espinheiro', 'Av. Gov. Agamenon Magalhães');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'São Paulo', 'São Paulo', 'Vila Prudente', 'Rua Orfanato');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Rio de Janeiro', 'Rio de Janeiro', 'Centro', 'Av. Passos');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Niterói', 'Rio de Janeiro', 'Ingá', 'Rua Sebastião');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Gravatá', 'Pernambuco', 'Prado', 'R. Joaquim Souto');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Vitória St. Antão', 'Pernambuco', 'Matriz', 'R. Ismael de Andrade');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Recife', 'Penambuco', 'Madalena', 'R. Altinho');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Recife', 'Pernambuco', 'Boa Viagem', 'Av. Conselheiro Aguiar');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Caruaru', 'Pernambuco', 'Maurício de Nassau', 'R. da Penha');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Caruaru', 'Pernambuco', 'Universitário', 'Av. Madrid');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Caruaru', 'Pernambuco', 'Salgado', 'R. Kansas');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Jab. dos Guararapes', 'Pernambuco', 'Piedade', 'Av. Ayrton Senna da Silva');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Recife', 'Pernambuco', 'Pina', 'R. Souto Filho');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Olinda', 'Pernambuco', 'Bairro Novo', 'R. Maria Ramos');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Olinda', 'Pernambuco', 'Jardim Atlântico', 'R. Olávo Bilac');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Olinda', 'Pernambuco', 'Bairro Novo', 'R. Maria Ramos');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'Olinda', 'Pernambuco', 'Fragoso', 'R. Cordeiro');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'João Pessoa', 'Paraíba', 'Miramar', 'R. José Liberato');
INSERT INTO ENDERECO VALUES (SEQ_ENDERECO.NEXTVAL, 'João Pessoa', 'Paraíba', 'São José', 'R. Edmundo Filho');

INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'José Barros Rocha',70,'Masculino',NULL,1);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Caio Barros Gomes',32,'Masculino',5,10);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Breno Lima Goncalves',25,'Masculino',8,13);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Vinicius Ferreira Alves',35,'Masculino',2,20);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Bianca Cavalcanti Azevedo',82,'Feminino',14,3);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Carolina Almeida Oliveira',35,'Feminino',19,4);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Mariana Correia Souza',19,'Feminino',12,7);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Luana Gomes Sousa',30,'Feminino',17,5);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Daniel Lima Costa',40,'Masculino',3,6);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Matilde Alves Correia',60,'Feminino',NULL,9);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Nicolash Santos Lima',45,'Masculino',NULL,11);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Gabrielle Azevedo Rodrigues',25,'Feminino',11,12);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Vitor Ribeiro Cunha',19,'Masculino',2,17);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Nicole Pinto Oliveira',29,'Feminino',6,18);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Paulo Goncalves Ferreira',18,'Masculino',7,19);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Isabela Cavalcanti Rocha',23,'Feminino',18,8);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Kaua Azevedo Gomes',60,'Masculino',15,2);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Emilly Costa Melo',27,'Feminino',13,15);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Marcos Lima Cardoso',80,'Masculino',9,16);
INSERT INTO PACIENTE VALUES(SEQ_PACIENTE.NEXTVAL, 'Evelyn Costa Dias',64,'Feminino',16,14);