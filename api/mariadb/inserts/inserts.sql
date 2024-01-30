INSERT INTO USUARIOS (cpf, nome, dt_inicio, email, senha, adm) 
VALUES ('05214874563', 'João Ferreira', '2020/05/12','joaocdferreira@gmail.com', 'jdout@QD9', FALSE),
       ('01200478631', 'Matheus Rodrigo', '2019/05/30','mmeusba.rodrigo@outlook.com', 'Mat#1998368', FALSE),
       ('10200612548', 'Bárbara Camargo', '2020/07/14','barbaramel12a@gmail.com', '155dakj@3DA', TRUE),
       ('25864831550', 'Gustavo Lima', '2021/08/01','gus.ferlima2@hotmail.com', 'DAKJgust1515@', FALSE),
       ('00789665603', 'Jardel Pereira', '2020/02/06','jardel.pereira@outlook.com', 'kkaddeJar!', FALSE),
       ('01047856610', 'Vitória Cabral', '2021/01/09','vitoriaccabral67@gmail.com', '@VitoriA1548', TRUE),
       ('18203648709', 'Melissa Gurgel', '2021/05/21','mel.santanagurgel@gmail.com', 'mel1998@SG', FALSE),
       ('01524856930', 'Tom Silva', '2019/10/20','tomsilva@live.com', 'TOMtom2015!', FALSE),
       ('12598654712', 'Marcos Galvão', '2020/11/01','marcos.margalvao@outlook.com', 'mM123#548G', FALSE),
       ('00885423642', 'João Oliveira', '2019/12/24','jjoliveira.joao@gmail.com', '2015@Joliveira', FALSE);

INSERT INTO INSTRUTORES (salario, especializacao, conta, cpf_instrutor) 
VALUES (1900.00, 'Muay-Thai', '15478-26', '05214874563'),
       (2820.00, 'Dança', '15478-26', '01200478631'),
       (3500.00, 'Musculação', '15478-26', '10200612548');

INSERT INTO ALUNOS (altura, peso, n_cartao, link_call, objetivo, cpf_aluno, cpf_instrutor) 
VALUES (1.67, 65.4, '00015', 'academia.com/aluno258', 'Ganhar massa muscular', '25864831550', '10200612548'),
       (1.72, 81.2, '00016', 'academia.com/aluno007', 'Perder peso', '00789665603', '01200478631'),
       (1.67, 79.1, '00017', 'academia.com/aluno010', 'Ganhar força', '01047856610', '05214874563'),
       (1.67, 62.6, '00018', 'academia.com/aluno182', 'Ganhar massa muscular', '18203648709', '10200612548'),
       (1.67, 74.6, '00019', 'academia.com/aluno015', 'Ganhar resistência', '01524856930', '05214874563'),
       (1.67, 95.7, '00020', 'academia.com/aluno125', 'Perder peso', '12598654712', '01200478631'),
       (1.67, 65.3, '00020', 'academia.com/aluno008', 'Ganhar força', '00885423642', '05214874563');

INSERT INTO FREQUENCIAS (hora_entrada, hora_saida, data_, u_cpf) 
VALUES ('07:09', '08:39', '2021/02/08', '25864831550'),
       ('06:41', '07:59', '2021/05/08', '25864831550'),
       ('09:39', '10:52', '2020/04/12', '00789665603'),
       ('16:41', '18:12', '2020/05/01', '00789665603'),
       ('19:15', '22:03', '2021/08/13', '01047856610'),
       ('18:35', '19:48', '2021/09/01', '01047856610'),
       ('07:10', '09:12', '2021/07/04', '18203648709'),
       ('06:29', '07:54', '2021/06/11', '18203648709'),
       ('06:37', '08:22', '2019/12/30', '01524856930'),
       ('09:55', '12:01', '2019/12/03', '01524856930'),
       ('15:46', '18:02', '2021/07/15', '12598654712'),
       ('16:32', '17:41', '2021/08/13', '12598654712'),
       ('20:03', '22:10', '2021/05/02', '00885423642'),
       ('20:06', '21:58', '2021/04/06', '00885423642');

INSERT INTO PAGAMENTOS (id_pagamento, dt_pagamento, forma, valor, cpf_cliente)
VALUES (1, '2019/11/10', 'cartão', 70, '01524856930'),
       (2, '2019/12/10', 'cartão', 70, '01524856930'),
       (3, '2019/12/24', 'cartão', 70, '00885423642'),
       (4, '2020/01/24', 'cartão', 70, '00885423642'),
       (5, '2020/02/28', 'débito', 65, '00789665603'),
       (6, '2020/03/28', 'débito', 65, '00789665603'),
       (7, '2020/11/25', 'cartão', 70, '12598654712'),
       (8, '2020/12/26', 'cartão', 70, '12598654712'),
       (9, '2021/01/09', 'cartão', 70, '01047856610'),
       (10, '2021/02/09', 'cartão', 70, '01047856610'),
       (11, '2021/05/21', 'cartão', 70, '18203648709'),
       (12, '2021/06/21', 'cartão', 70, '18203648709'),
       (13, '2021/08/20', 'cartão', 70, '25864831550'),
       (14, '2021/08/20', 'cartão', 70, '25864831550');

INSERT INTO FICHAS (n_repeticoes, n_series, peso, a_cpf)
VALUES ( 12, 5, 10.5, '25864831550'),
        ( 10, 3, 8.5, '12598654712'),
        ( 15, 4, 15, '12598654712'),
        ( 10, 3, 8.5, '25864831550'),
        ( 12, 3, 10, '00789665603'),
        ( 15, 4, 15, '01047856610'),
        ( 20, 4, 10.5, '00789665603'),
        ( 30, 3, 12.5, '01047856610'),
        ( 25, 3, 15, '18203648709'),
        ( 15, 4, 20, '18203648709'),
        ( 12, 5, 10, '01524856930'),
        ( 20, 4, 12, '01524856930'),
        ( 25, 3, 8.5, '00885423642'),
        ( 30, 3, 9, '00885423642');


INSERT INTO TREINOS (dia_semana, id_ficha, u_cpf, i_cpf)
VALUES ('2021/02/08', 00001, '25864831550', '10200612548'),
       ('2021/05/08', 00002, '25864831550', '10200612548'),
       ('2020/04/12', 00003, '00789665603', '01200478631'),
       ('2020/05/01', 00004, '00789665603', '01200478631'),
       ('2021/08/13', 00005, '01047856610', '05214874563'),
       ('2021/09/01', 00006, '01047856610', '05214874563'),
       ('2021/07/04', 00007, '18203648709', '10200612548'),
       ('2021/06/11', 00008, '18203648709', '10200612548'),
       ('2019/12/30', 00009, '01524856930', '05214874563'),
       ('2019/12/03', 00010, '01524856930', '05214874563'),
       ('2021/07/15', 00011, '12598654712', '01200478631'),
       ('2021/08/13', 00012, '12598654712', '01200478631'),
       ('2021/05/02', 00013, '00885423642', '05214874563'),
       ('2021/04/06', 00014, '00885423642', '05214874563');


INSERT INTO EXERCICIOS (nome, musculo)
VALUES ('Exercício aeróbico', 'Corpo todo'),
       ('Flexões', 'Braço'),
       ('Abdominais', 'Abdomen'),
       ('Agachamento', 'Glúteo'),
       ('Stiff', 'Abdutores'),
       ('Elevação de ombros', 'Ombro'),
       ('Rosca direta', 'Bíceps'),
       ('Supino reto', 'Peito'),
       ( 'Leg-press', 'Glúteo'),
       ('Agachamendo sumô', 'Glúteo');

INSERT INTO CONTEM ( id_exercicio,id_ficha )
VALUES (06, 00001), 
       (04, 00001), 
       (01, 00002), 
       (03, 00002), 
       (05, 00003), 
       (07, 00003), 
       (10, 00004),
       (05, 00004),
       (05, 00005),
       (03, 00005),
       (07, 00006),
       (08, 00006),
       (09, 00007),
       (10, 00007),
       (10, 00008),
       (09, 00008),
       (01, 00009),
       (03, 00009),
       (05, 00010),
       (07, 00010),
       (08, 00011),
       (10, 00011),
       (03, 00012),
       (04, 00012),
       (01, 00013),
       (06, 00013),
       (09, 00014),
       (01, 00014);

INSERT INTO LOCALIZACOES(id,titulo,conteudo,aberto,mascara,toalha,bebedouro,vestiario) VALUES (10998878976097,'Dom Severino','<p>Av. Dom Severino, 1733 &#8211; Fátima<br>Teresina, PI</p>',true,'required','required','partial','allowed'),
(10998878976096,'Teresina Shopping','<p>Av. Raul Lopes, 1000 &#8211; Noivos<br>Teresina, PI</p>',true,'required','required','partial','allowed'),
(10998878976092,'GV Shopping','<p>Rua Sete de Setembro, 3500 &#8211; Centro<br>Governador Valadares, MG</p>',true,'recommended','required','partial','allowed'),
(10998878976091,'Avenida Mascote','<p>Av. Mascote, 159 &#8211; Vila Mascote<br>São Paulo, SP</p>',true,'required','recommended','not_allowed','allowed'),
(10998878976090,'Litoral Plaza','<p>Avenida Ayrton Senna da Silva, 1511 &#8211; Tude Bastos (Sítio do Campo)<br>Praia Grande, SP</p>',true,'required','required','not_allowed','allowed'),
(10998878976089,'Rui Barbosa','<p>Avenida Rui Barbosa, 2727 &#8211; Joaquim Távora<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976088,'Parnamirim Centro','<p>Avenida Brigadeiro Everaldo Breves, 780 &#8211; Centro<br>Parnamirim, RN</p>',true,'required','required','partial','allowed'),
(10998878976086,'Cambuí II','<p>Rua Quatorze de Dezembro, 483 &#8211; Centro<br>Campinas, SP</p>',true,'required','recommended','partial','partial'),
(10998878976084,'Parque Shopping Bahia','<p>Avenida Santos Dumont, 4360 &#8211; Centro<br>Lauro de Freitas, BA</p>',true,'required','required','not_allowed','partial'),
(10998878976083,'Bauru','<p>Av. Getúlio Vargas, 25-16 &#8211; Vila Aviação<br>Bauru, SP</p>',true,'required','required','partial','partial'),
(10998878976081,'Limeira','<p>Avenida Campinas, 50 &#8211; Vila Cidade Jardim<br>Limeira, SP</p>',true,'required','required','partial','partial'),
(10998878976079,'Presidente Prudente','<p>Rua Siqueira Campos, 1545 &#8211; Vila Roberto<br>Presidente Prudente, SP</p>',false,'required','required','partial','allowed'),
(10998878976078,'Frei Aureliano','<p>Rua Frei Aureliano Grottamari, 679 &#8211; Capuchinhos<br>Feira de Santana, BA</p>',true,'required','required','not_allowed','allowed'),
(10998878976077,'Fraga Maia','<p>Av. Francisco Fraga Maia, 4727 &#8211; Cidade Nova<br>Feira de Santana, BA</p>',true,'required','required','not_allowed','allowed'),
(10998878976076,'Camaçari','<p>Rodovia BA-535 &#8211; Polo Petroquímico<br>Camaçari, BA</p>',true,'required','required','partial','partial'),
(10998878976075,'Maracanaú','<p>Avenida Carlos Jereissati, 100 &#8211; Jereissati II<br>Maracanaú, CE</p>',true,'required','required','partial','closed'),
(10998878976074,'Paulínia','<p>Rua Bolívia, 60 &#8211; Jardim América<br>Paulínia, SP</p>',true,'required','required','partial','partial'),
(10998878976073,'Araçatuba','<p>Av. Joaquim Pompeu de Toledo, 601 &#8211; Vila Estádio<br>Araçatuba, SP</p>',true,'required','required','partial','closed'),
(10998878976072,'Jacareí','<p>Av. Sen. Joaquim Miguel M. de Siqueira &#8211; Jardim Pereira do Amparo<br>Jacareí, SP</p>',true,'required','required','partial','partial'),
(10998878976071,'Araras','<p>Av. Dona Renata, 2954 &#8211; Parque Santa Cândida<br>Araras, SP</p>',true,'required','required','partial','partial'),
(10998878976070,'Trio','<p>Avenida Presidente Vargas, 1265 &#8211; Jardim São Luiz<br>Ribeirão Preto, SP</p>',true,'required','required','not_allowed','partial'),
(10998878976069,'Neo','<p>Avenida Maria de Jesus Condeixa, 600 &#8211; &#8211; Jardim Palma Travassos<br>Ribeirão Preto, SP</p>',true,'required','required','not_allowed','partial'),
(10998878976068,'Shopping Santa Úrsula','<p>Rua São José, 933 &#8211; Centro<br>Ribeirão Preto, SP</p>',true,'required','required','not_allowed','partial'),
(10998878976067,'Mogi Guaçu','<p>Av. Mogi Mirim, 210 &#8211; Centro<br>Mogi Guaçu, SP</p>',true,'required','required','partial','partial'),
(10998878976066,'Jundiaí Shopping','<p>Avenida Nove de Julho, 3333 &#8211; Anhangabaú<br>Jundiaí, SP</p>',true,'required','required','partial','partial'),
(10998878976065,'Americana','<p>Avenida Brasil, 1955 &#8211; Jardim São Paulo<br>Americana, SP</p>',true,'required','required','partial','partial'),
(10998878976064,'Santa Bárbara D&#8217;Oeste','<p>Rua do Osmio, 975 &#8211; Vila Mollon IV<br>Santa Bárbara d&#8217;Oeste, SP</p>',true,'required','required','partial','partial'),
(10998878976062,'Rio Claro','<p>Rua 14, 289 &#8211; Estádio<br>Rio Claro, SP</p>',true,'required','required','partial','partial'),
(10998878976061,'Av. 31 de Março','<p>Avenida Trinta e Um de Março, 1533 &#8211; Paulicéia<br>Piracicaba, SP</p>',true,'required','required','partial','partial'),
(10998878976060,'Shopping Piracicaba',NULL,false,'required','required','partial','partial'),
(10998878976059,'Marília','<p>Av. Tiradentes, 1048 &#8211; Quadra 2 &#8211; Lote B &#8211; Fragata<br>Marília, SP</p>',false,'required','required','not_allowed','partial'),
(10998878976058,'Hortolândia','<p>Rua José Camilo de Camargo, 05 &#8211; Loteamento Remanso Campineiro<br>Hortolândia, SP</p>',true,'required','required','partial','partial'),
(10998878976057,'Barão Geraldo','<p>Avenida Santa Isabel, 1030 &#8211; Vila Santa Isabel<br>Campinas, SP</p>',true,'required','required','partial','partial'),
(10998878976056,'Sumaré','<p>Praça da República, 148 &#8211; Centro<br>Sumaré, SP</p>',true,'required','required','partial','partial'),
(10998878976055,'Taubaté','<p>Avenida Itália, 850 &#8211; Jardim das nações<br>Taubaté, SP</p>',true,'required','required','not_allowed','partial'),
(10998878976054,'Aquarius','<p>Av. Comendador Vicente de Paulo Penido, 251 &#8211; Parque Res. Aquarius<br>São José dos Campos, SP</p>',true,'required','required','partial','closed'),
(10998878976053,'Satélite','<p>R. Pedro Tursi, 180 &#8211; Jardim Satélite<br>São José dos Campos, SP</p>',true,'required','required','partial','closed'),
(10998878976052,'Parque das Bandeiras','<p>Av. John Boyd Dunlop, 3900 &#8211; Jardim Ipaussurama<br>Campinas, SP</p>',true,'required','recommended','partial','allowed'),
(10998878976051,'Prado Boulevard','<p>Avenida Washington Luís, 2480 &#8211; Vila Marieta<br>Campinas, SP</p>',true,'required','recommended','partial','partial'),
(10998878976050,'Abolição','<p>Rua da Abolição, 2013 &#8211; Ponte Preta<br>Campinas, SP</p>',true,'required','recommended','partial','partial'),
(10998878976049,'Campinas Shopping','<p>Rua Jacy Teixeira Camargo, 940 &#8211; Jardim do Lago<br>Campinas, SP</p>',true,'required','recommended','partial','partial'),
(10998878976048,'Jorge Krug','<p>Rua Jorge Krug, 177 &#8211; Guanabara<br>Campinas, SP</p>',true,'required','recommended','partial','partial'),
(10998878976047,'Maxi Shopping','<p>Av. Antônio Frederico Ozanan, 6000 &#8211; Jardim Liberdade<br>Jundiaí, SP</p>',true,'recommended','recommended','partial','partial'),
(10998878976046,'Rua Quinze de Novembro','<p>Rua Quinze de Novembro, 1.000 &#8211; Centro<br>Jundiaí, SP</p>',true,'recommended','recommended','partial','partial'),
(10998878976045,'Center Vale','<p>Av. Deputado Benedito Matarazzo, 9403 &#8211; Jardim Oswaldo Cruz<br>São José dos Campos, SP</p>',true,'required','recommended','partial','partial'),
(10998878976044,'Campolim','<p>Avenida Antônio Carlos Comitre, 2051 &#8211; Parque Campolim<br>Sorocaba, SP</p>',true,'required','recommended','partial','partial'),
(10998878976043,'Pereira Inácio','<p>Avenida Comendador Pereira Inácio, 820 &#8211; Jardim Vergueiro<br>Sorocaba, SP</p>',true,'required','recommended','partial','partial'),
(10998878976042,'Shopping Cidade Sorocaba','<p>Av. Itavuvu, 3365 &#8211; Jardim Santa Cecília<br>Sorocaba, SP</p>',true,'required','recommended','partial','partial'),
(10998878976041,'Pátio Cianê','<p>Av. Doutor Afonso Vergueiro, 823 &#8211; Centro<br>Sorocaba, SP</p>',true,'required','recommended','partial','partial'),
(10998878976039,'Indaiatuba','<p>Rua das Primaveras, 1050 &#8211; Jardim Pompéia<br>Indaiatuba, SP</p>',true,'required','required','partial','allowed'),
(10998878976038,'Matatu','<p>Rua Barros Falcão, 453 &#8211; Matatu<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976037,'Graça','<p>Rua Oito de Dezembro, 525 &#8211; Graça<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976036,'Shopping Piedade','<p>Rua Conselheiro Junqueira Ayres, 165 &#8211; Barris<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976035,'Salvador Norte Shopping','<p>Rodovia BA-305 &#8211; São Cristóvão<br>Salvador, BA</p>',false,'required','recommended','not_allowed','partial'),
(10998878976034,'Itaigara','<p>R. Wanderley Pinho, 527 &#8211; Itaigara<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976033,'Avenida Jorge Amado','<p>Avenida Jorge Amado, 1834 &#8211; Imbuí<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976032,'Imbuí I','<p>Rua dos Colibris, 337 &#8211; Imbuí<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976031,'Costa Azul','<p>R. Prof. Lourival Pimenta Bastos, 368 &#8211; Costa Azul<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976030,'Caminho das Árvores','<p>Alameda das Espatódeas, 138 &#8211; Caminho das Árvores<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976029,'Cabula','<p>Rua Silveira Martins, 165 &#8211; Cabula<br>Salvador, BA</p>',true,'required','recommended','not_allowed','partial'),
(10998878976028,'Campos dos Goytacazes','<p>Rua Barão de Miracema, 287 &#8211; Centro<br>Campos dos Goytacazes, RJ</p>',true,'required','required','partial','closed'),
(10998878976023,'Búzios','<p>Rua das Pedras, 73 &#8211; Dantas<br>Armação dos Búzios, RJ</p>',true,'required','required','partial','allowed'),
(10998878976022,'Itabuna','<p>Avenida Aziz Maron, s/n &#8211; Jardim Vitória<br>Itabuna, BA</p>',true,'required','required','partial','allowed'),
(10998878976021,'Volta Redonda','<p>Av. Amaral Peixoto, 555 &#8211; Centro<br>Volta Redonda, RJ</p>',true,'required','required','partial','allowed'),
(10998878976019,'Caruaru','<p>Rua Adjar da Silva Casé, 800 &#8211; Indianópolis<br>Caruaru, PE</p>',true,'required','required','not_allowed','allowed'),
(10998878976013,'Mossoró','<p> Rua João da Escóssia, 1102 &#8211; Nova Betânia<br>Mossoró, RN </p>',true,'required','required','partial','allowed'),
(10998878976012,'Ville Roy','<p>Avenida Ville Roy, 1544 (Dentro do Roraima Garden Shopping) &#8211; Caçari<br>Boa Vista, RR</p>',true,'required','required','partial','allowed'),
(10998878976011,'João Alencar','<p>Av. Joao Alencar, 2181 &#8211; Cauamé<br>Boa Vista, RR</p>',true,'required','required','partial','allowed'),
(10998878976010,'Tirol','<p>Avenida Prudente Morais, 777 &#8211; Tirol<br>Natal, RN</p>',true,'required','required','partial','allowed'),
(10998878976009,'Avenida Roberto Freire','<p>Avenida Engenheiro Roberto Freire, 2020 &#8211; Capim Macio<br>Natal, RN</p>',true,'required','required','partial','allowed'),
(10998878976008,'Partage Norte Shopping Natal','<p>Av. Dr. João Medeiros Filho &#8211; Potengi<br>Natal, RN</p>',true,'required','required','partial','allowed'),
(10998878976007,'Midway','<p>Avenida Bernardo Vieira, 3775 &#8211; Tirol<br>Natal, RN</p>',true,'required','required','partial','allowed'),
(10998878976006,'Shopping Grande Rio','<p>Rua Maria Soares Sendas, 111 &#8211; Parque Barreto<br>São João de Meriti, RJ</p>',true,'required','required','partial','allowed'),
(10998878976005,'Vilar dos Teles','<p>Av. Automóvel Clube, 2487 &#8211; Vilar dos Teles<br>São João de Meriti, RJ</p>',true,'required','required','partial','allowed'),
(10998878976004,'Maceió Shopping','<p> Av. Comendador Gustavo Paiva, 2990 &#8211; Mangabeiras<br>Maceió, AL </p>',true,'recommended','recommended','partial','closed'),
(10998878976003,'Palato','<p>Avenida Fernandes Lima, 548 &#8211; Farol<br>Maceió, AL</p>',true,'recommended','recommended','partial','closed'),
(10998878976002,'Pátio Maceió','<p>Avenida Menino Marcelo, 3800 &#8211; Cidade Universitária<br>Maceió, AL</p>',true,'recommended','recommended','partial','closed'),
(10998878976998,'Candelária','<p>Rodovia BR-101, S/N &#8211; km 2 &#8211; Candelária<br>Natal, RN</p>',true,'required','required','partial','allowed'),
(10998878976995,'Largo do Taboão','<p>Pça. Nicola Vivilechio, 103 &#8211; Jardim Bom Tempo<br>Taboão da Serra, SP</p>',true,'required','recommended','not_allowed','allowed'),
(10998878976994,'Taboão da Serra','<p>Rodovia Régis Bittencourt, km 271,5 &#8211;<br>Taboão da Serra, SP</p>',true,'required','recommended','not_allowed','allowed'),
(10998878976993,'Manaíra Shopping','<p>Av. Governador Flávio Ribeiro Coutinho, 805 &#8211; Manaíra Shopping &#8211; 3º andar<br>João Pessoa, PB</p>',true,'required','required','partial','closed'),
(10998878976992,'São Carlos','<p>Av. Francisco Pereira Lopes, 1701 &#8211; Jardim Bandeirantes<br>São Carlos, SP</p>',true,'required','required','partial','closed'),
(10998878976991,'Jardim das Américas','<p>Av. Tancredo de Almeida Neves, 165 &#8211; Tancredo Neves<br>Cuiabá, MT</p>',true,'required','required','partial','allowed'),
(10998878976990,'Rubens de Mendonça','<p>Av. Historiador Rubens de Mendonça, 42/43 &#8211; Alvorada<br>Cuiabá, MT</p>',true,'required','required','partial','allowed'),
(10998878976988,'Goiabeiras','<p>Avenida Senador Filinto Müller, 28 &#8211; Goiabeiras<br>Cuiabá, MT</p>',true,'required','required','partial','allowed'),
(10998878976986,'Parangaba','<p>Avenida Doutor Silas Munguba, 643 &#8211; Parangaba<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976985,'Messejana','<p>Rua Manuel Castelo Branco, 352 &#8211; Messejana<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976983,'Dom Lustosa','<p>Rua Coronel Matos Dourado, 1280 &#8211; Dom Lustosa<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976981,'Vila Peri','<p>Rua Waldir Diogo, 1138 &#8211; Manuel Sátiro<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976980,'Via Sul Shopping','<p>Av. Washington Soares, 4335 &#8211; Edson Queiroz<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976979,'Cocó','<p>Rua Doutor Gilberto Studart, 155 &#8211; Cocó<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976978,'Barbosa de Freitas','<p>Av. Santos Dumont, 3060 (loja 12 a 20) &#8211; Aldeota<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976977,'Barão de Studart','<p>Av. Barão de Studart, 2200 &#8211; Joaquim Távora<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976976,'Washington Soares','<p>Av. Washington Soares, 1550 &#8211; Edson Queiroz<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976975,'Vicente Linhares','<p>Rua Tibúrcio Cavalcante, 1885 &#8211; Meireles<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976974,'Papicu','<p>Av. Eng. Santana Jr., 699 &#8211; Papicu<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976973,'North Shopping','<p>Avenida Bezerra de Menezes, 2450 &#8211; São Gerardo<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976972,'Riomar Kennedy','<p>Avenida Sargento Hermínio Sampaio 3.100 &#8211; Presidente Kennedy<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976971,'Montese','<p>Avenida dos Expedicionários, 4444 &#8211; Benfica<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976970,'Meireles','<p>Avenida Senador Virgílio Távora, 303 &#8211; Meireles<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976969,'Oliveira Paiva','<p>Avenida Oliveira Paiva, 1350 &#8211; Cidade dos Funcionários<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976968,'North Shopping Jóquei','<p>Avenida Lineu Machado, 419 &#8211; Jóquei Clube<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976967,'Iracema','<p>Rua Carlos Vasconcelos, 284 &#8211; Meireles<br>Fortaleza, CE</p>',true,'required','required','partial','closed'),
(10998878976966,'Cariacica','<p>Avenida Expedito Garcia, 281 &#8211; Campo Grande<br>Cariacica, ES</p>',true,'required','required','partial','allowed'),
(10998878976962,'Praia do Canto II','<p>Rua Joaquim Lírio, 455 &#8211; Praia do Canto<br>Vitória, ES</p>',true,'required','required','partial','allowed'),
(10998878976961,'Praia do Canto I','<p>Rua Joaquim Lírio, 455 &#8211; Praia do Canto<br>Vitória, ES</p>',true,'required','required','partial','allowed'),
(10998878976960,'Reta da Penha','<p>Reta da Penha, 2150 &#8211; Barro Vermelho<br>Vitória, ES</p>',true,'required','required','partial','allowed'),
(10998878976959,'Serra','<p>Avenida BNH, 57 &#8211; Parque Residencial Laranjeiras<br>Serra, ES</p>',true,'required','required','partial','allowed'),
(10998878976958,'Shopping Vila Velha','<p>Av. Luciano das Neves 2418 &#8211;<br>Vila Velha, ES</p>',true,'required','required','partial','allowed'),
(10998878976957,'Centro Vila Velha','<p>Rua Quinze de Novembro, 1123 &#8211; Centro<br>Vila Velha, ES</p>',true,'required','required','partial','allowed'),
(10998878976956,'Buriti Shopping','<p>Avenida Rio Verde, s/n &#8211; Jardim Nova Era<br>Aparecida de Goiânia, GO</p>',true,'required','required','partial','closed'),
(10998878976953,'Macapá','<p>Rua Leopoldo Machado, 2334 &#8211; Central<br>Macapá, AP</p>',true,'required','required','partial','closed'),
(10998878976952,'Presidente Costa e Silva','<p><p>Av. Presidente costa e Silva, 808 &#8211; Boqueirão<br>Praia Grande, SP</p>
<span><strong>Obs.:</strong> *Unidade fechará de 1h em 1h para limpeza.</span></p>',true,'required','required','not_allowed','allowed'),
(10998878976949,'Suzano','<p>Rua Sete de Setembro, 555 &#8211; Cidade Cruzeiro do Sul<br>Suzano, SP</p>',true,'required','recommended','partial','closed'),
(10998878976948,'Moreira César','<p>Rua Coronel Moreira César, 26 &#8211; Icaraí<br>Niterói, RJ</p>',true,'required','required','partial','partial'),
(10998878976947,'Ingá','<p>Rua Tiradentes,155 &#8211; Inga<br>Niterói, RJ</p>',true,'required','required','partial','partial');

INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976090, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976089, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976089, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976088, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976088, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976084, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976083, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976081, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976081, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976079, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976075, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976074, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976074, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976074, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976073, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976072, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976072, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976071, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976070, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976069, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976067, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976065, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976065, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976062, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976061, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976061, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976060, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976059, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976059, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976058, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976057, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976057, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976056, 'Sáb.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976056, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976055, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976054, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976054, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976051, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976051, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976049, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976049, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976048, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976047, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976047, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976044, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976044, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976043, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976043, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976042, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976042, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976039, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976039, 'Sáb.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976037, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976037, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976035, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976034, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976032, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976031, 'Sáb.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976030, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976029, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976029, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976028, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976028, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976028, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976022, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976021, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976021, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976013, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976013, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976013, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976011, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976011, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976010, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976008, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976008, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976007, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976006, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976006, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976005, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976005, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976004, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976004, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976003, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976003, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976003, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976998, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976995, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976995, 'Seg. à Sex.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976995, 'Dom.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976992, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976992, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976990, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976988, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976986, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976986, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976985, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976985, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976983, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976983, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976981, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976980, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976978, 'Sáb.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976978, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976977, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976977, 'Seg. à Sex.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976976, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976975, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976974, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976973, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976973, 'Sáb.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976972, 'Sáb.', 'Fechado');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976972, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976970, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976968, 'Dom.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976968, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976967, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976967, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976966, 'Sáb.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976966, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976962, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976960, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976959, 'Seg. à Sex.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976959, 'Sáb.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976959, 'Dom.', 'Tarde');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976957, 'Seg. à Sex.', 'Noite');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976952, 'Dom.', 'Manhã');
INSERT INTO AGENDAMENTOS (id_localizacao, dias_semana, horario) VALUES (10998878976948, 'Dom.', 'Fechado');