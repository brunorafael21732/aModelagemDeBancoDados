-------INSERT-------

Insert into cliente(nome, telefone)
VALUES
('ANA MARIA', '1199999-99'),
('BERNARDO DA SILVA', '11988888-66'),
('MARIA JULIA', '11955555-55');

select * from cliente;

Insert into Pet(nome, especie, idade, id_cliente)
VALUES
('Peb', 'cachorro',1, 3),
('Nino', 'gato',3, 2),
('Clark', 'cachorro',7, 1);

select * from Pet;


Insert into Veterinario(nome, crmv)
VALUES
('DR.VINICIUS', 'SP12345'),
('DRA.CORALINA', 'GO3254'),
('DRA.MAYA', 'SP5873');

select * from Veterinario


Insert into Consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-3-15', 'vacina',1, 1),
('2025-4-10', 'castracao',2, 2),
('2025-9-20', 'retorno',1, 1);

select * from Consulta;


Insert into Medicamento(nome, quantidade, validade_medicamento, id_consulta)
VALUES
('vermit', 3, '2029-10-22',1),
('vermit02', 3, '2030-02-24',2),
('vermit03', 2, '2030-4-15',3);

select * from Medicamento;

Insert into Medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1,'1 dose unica'),
(1, 2,'Aplicar 2 gotas no ouvido'),
(3, 2, '1 comprimido');

select * from Medicamento_consulta;





select
   co.id_consulta,
   co.data,
   v.nome AS Veterinario,
   v.crmv
From Consulta co
JOIN Veterinario v ON v.id_veterinario = co.id_veterinario;



