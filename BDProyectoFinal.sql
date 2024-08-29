-- 1. Tabla de Clientes
CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20)
);

-- 2. Tabla de Direcciones (1:N con Clientes)
CREATE TABLE addresses (
    address_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    address VARCHAR(255),
    city VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50)
);

-- 3. Tabla de Categorías (1:N con Productos)
CREATE TABLE categories (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name VARCHAR(50)
);


-- 4. Tabla de Productos
CREATE TABLE products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    category_id INT FOREIGN KEY REFERENCES categories(category_id)
);



-- 5. Tabla de Pedidos
CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    order_date DATETIME DEFAULT GETDATE(),
    total DECIMAL(10, 2)
);

-- 6. Tabla de Detalles de Pedidos
CREATE TABLE order_details (
    order_detail_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES orders(order_id),
    product_id INT FOREIGN KEY REFERENCES products(product_id),
    quantity INT,
    price DECIMAL(10, 2)
);

-- 7. Tabla de Métodos de Pago
CREATE TABLE payment_methods (
    payment_method_id INT IDENTITY(1,1) PRIMARY KEY,
    method_name VARCHAR(50)
);

-- 8. Tabla de Pagos
CREATE TABLE payments (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES orders(order_id),
    payment_date DATETIME DEFAULT GETDATE(),
    amount DECIMAL(10, 2),
    payment_method_id INT FOREIGN KEY REFERENCES payment_methods(payment_method_id)
);

-- 9. Tabla de Métodos de Envío
CREATE TABLE shipping_methods (
    shipping_method_id INT IDENTITY(1,1) PRIMARY KEY,
    method_name VARCHAR(50),
    shipping_cost DECIMAL(10, 2)
);

-- 10. Tabla de Envío de Pedidos
CREATE TABLE order_shipping (
    order_shipping_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT FOREIGN KEY REFERENCES orders(order_id),
    shipping_method_id INT FOREIGN KEY REFERENCES shipping_methods(shipping_method_id),
    shipping_address_id INT FOREIGN KEY REFERENCES addresses(address_id),
    shipped_date DATETIME
);


INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Juan', 'Pérez', 'juan.perez1@gmail.com', '8495-3029'),
('Maria', 'Gómez', 'maria.gomez@hotmail.com', '8496-5029'),
('Pedro', 'López', 'pedro.lopez@gmail.com', '555-0103'),
('Ana', 'Martínez', 'ana.martinez@hotmail.com', '555-0104'),
('Luis', 'Fernández', 'luis.fernandez@gmail.com', '8496-5027'),
('Carmen', 'Sánchez', 'carmen.sanchez@hotmail.com', '555-0106'),
('José', 'Rodríguez', 'jose.rodriguez@gmail.com', '8496-5019'),
('Laura', 'Hernández', 'laura.hernandez@gmail.com', '555-0108'),
('Miguel', 'García', 'miguel.garcia@hotmail.com', '8856-5029'),
('Elena', 'Torres', 'elena.torres@gmail.com', '8496-5095'),
('Ricardo', 'Ramírez', 'ricardo.ramirez@gmail.com', '8695-0111'),
('Patricia', 'Flores', 'patricia.flores@gmail.com', '4581-0112'),
('Diego', 'Gutiérrez', 'diego.gutierrez@gmail.com', '8645-0113'),
('Gloria', 'Castro', 'gloria.castro@hotmail.com', '9454-0114'),
('Roberto', 'Ruiz', 'roberto.ruiz@gmail.com', '4524-0115'),
('Verónica', 'Ortiz', 'veronica.ortiz@hotmail.com', '6854-0116'),
('Alejandro', 'Núñez', 'alejandro.nunez@gmail.com', '8645-0117'),
('Natalia', 'Jiménez', 'natalia.jimenez@gmail.com', '4867-0118'),
('Jorge', 'Ríos', 'jorge.rios@hotmail.com', '4866-0119'),
('Gabriela', 'Álvarez', 'gabriela.alvarez@gmail.com', '4589-0120'),
('Carlos', 'Molina', 'carlos.molina@hotmail.com', '8677-0121'),
('Isabel', 'Romero', 'isabel.romero@gmail.com', '7789-0122'),
('Victor', 'Soto', 'victor.soto@example.com', '9648-0123'),
('Lucía', 'Delgado', 'lucia.delgado@gmail.com', '7845-8124'),
('Alberto', 'Morales', 'alberto.morales@hotmail.com', '8645-0125'),
('Paula', 'Reyes', 'paula.reyes@hotmail.com', '6484-0126'),
('Francisco', 'Vargas', 'francisco.vargas@gmail.com', '6454-0127'),
('Mónica', 'Iglesias', 'monica.iglesias@gmail.com', '6484-0128'),
('Andrés', 'Peña', 'andres.pena@gmail.com', '4568-0129'),
('Adriana', 'Mendoza', 'adriana.mendoza@gmail.com', '4864-0130'),
('Enrique', 'Gil', 'enrique.gil@hotmail.com', '8642-0131'),
('Raquel', 'Cruz', 'raquel.cruz@hotmail.com', '8463-0132'),
('Manuel', 'Herrera', 'manuel.herrera@hotmail.com', '8666-0133'),
('Sara', 'Ramos', 'sara.ramos@hotmail.com', '4887-0134'),
('Felipe', 'Díaz', 'felipe.diaz@gmail.com', '4667-0135'),
('Clara', 'Cabrera', 'clara.cabrera@gmail.com', '4588-0136'),
('Hugo', 'Paredes', 'hugo.paredes@gmail.com', '3547-0137'),
('Alicia', 'Méndez', 'alicia.mendez@gmail.com', '4681-0138'),
('Oscar', 'Vega', 'oscar.vega@gmail.com', '8684-0139'),
('Cristina', 'Cortes', 'cristina.cortes@gmail.com', '8467-0140'),
('Mauricio', 'Carrillo', 'mauricio.carrillo@hotmail.com', '8899-0141'),
('Sonia', 'Serrano', 'sonia.serrano@gmail.com', '9988-0142'),
('Gustavo', 'Navarro', 'gustavo.navarro@gmail.com', '7455-0143'),
('Eva', 'Campos', 'eva.campos@gmail.com', '6486-0144'),
('Sebastián', 'Espinoza', 'sebastian.espinoza@gmail.com', '1548-0145'),
('Beatriz', 'Cano', 'beatriz.cano@gmail.com', '6844-0146'),
('Ramón', 'Guerrero', 'ramon.guerrero@hotmail.com', '9868-0147'),
('Cecilia', 'Lara', 'cecilia.lara@hotmail.com', '9988-0148'),
('Esteban', 'Salazar', 'esteban.salazar@hotmail.com', '8877-0149'),
('Rebeca', 'Suárez', 'rebeca.suarez@hotmail.com', '5544-0150'),
('Tomás', 'Castellanos', 'tomas.castellanos@hotmail.com', '6674-0151'),
('Valeria', 'Bermúdez', 'valeria.bermudez@hotmail.com', '5484-0152'),
('Fernando', 'León', 'fernando.leon@hotmail.com', '4345-0153'),
('Laura', 'Ávila', 'laura.avila@hotmail.com', '3458-0154'),
('Marcelo', 'Santos', 'marcelo.santos@hotmail.com', '6742-0155'),
('Silvia', 'Villalobos', 'silvia.villalobos@hotmail.com', '4834-0156'),
('Iván', 'Pinto', 'ivan.pinto@hotmail.com', '8468-0157'),
('Inés', 'Maldonado', 'ines.maldonado@gmail.com', '6843-0158'),
('Javier', 'Reynoso', 'javier.reynoso@gmail.com', '9559-0159'),
('Carmen', 'Fuentes', 'carmen.fuentes@gmail.com', '4916-0160'),
('Vicente', 'López', 'vicente.lopez@gmail.com', '6887-0161'),
('Pilar', 'Durán', 'pilar.duran@gmail.com', '3554-0162'),
('Rafael', 'Serrano', 'rafael.serrano@gmail.com', '6664-0163'),
('Noelia', 'Galván', 'noelia.galvan@gmail.com', '8884-0164'),
('Santiago', 'Camacho', 'santiago.camacho@gmail.com', '8840-0165'),
('Nora', 'Alarcón', 'nora.alarcon@gmail.com', '8097-0166'),
('Mateo', 'Valdés', 'mateo.valdes@gmail.com', '4584-0167'),
('Lorena', 'Aguirre', 'lorena.aguirre@hotmail.com', '6879-0168'),
('Ignacio', 'Medina', 'ignacio.medina@hotmail.com', '4489-0169'),
('Rosa', 'Chávez', 'rosa.chavez@gmail.com', '4774-0170'),
('Julio', 'Palacios', 'julio.palacios@gmail.com', '8866-0871'),
('Blanca', 'Ortega', 'blanca.ortega@gmail.com', '5548-0172'),
('Matías', 'Quintero', 'matias.quintero@gmail.com', '1358-0173'),
('Pablo', 'Vázquez', 'pablo.vazquez@gmail.com', '8642-0174'),
('Antonia', 'Herrera', 'antonia.herrera@gmail.com', '1588-5115'),
('Emilio', 'Ríos', 'emilio.rios@gmail.com', '9555-0176'),
('Lucía', 'Navarrete', 'lucia.navarrete@gmail.com', '8555-0177'),
('Ángel', 'Velasco', 'angel.velasco@hotmail.com', '7555-0178'),
('Virginia', 'Molina', 'virginia.molina@hotmail.com', '6555-0179'),
('Guillermo', 'Rosales', 'guillermo.rosales@hotmail.com', '5555-0180'),
('Lidia', 'Escobar', 'lidia.escobar@gmail.com', '4555-0181'),
('Raúl', 'Coronado', 'raul.coronado@gmail.com', '3555-0182'),
('Catalina', 'Lima', 'catalina.lima@gmail.com', '8877-0183'),
('Felipe', 'Lozano', 'felipe.lozano@hotmail.com', '5585-0184'),
('Diana', 'Sáenz', 'diana.saenz@gmail.com', '5755-0185'),
('Bruno', 'Sandoval', 'bruno.sandoval@gmail.com', '5545-0186'),
('Sofía', 'Castillo', 'sofia.castillo@hotmail.com', '5565-0187'),
('Eduardo', 'Cuevas', 'eduardo.cuevas@hotmail.com', '8545-0188'),
('Elsa', 'Robles', 'elsa.robles@hotmail.com', '5515-0189'),
('Marcos', 'Landa', 'marcos.landa@hotmail.com', '5553-0190'),
('Juana', 'Salinas', 'juana.salinas@hotmail.com', '4866-0191'),
('Eugenio', 'Cárdenas', 'eugenio.cardenas@hotmail.com', '555-0192'),
('Luz', 'Vázquez', 'luz.vazquez@hotmail.com', '8687-0193'),
('Bernardo', 'Miranda', 'bernardo.miranda@gmail.com', '8947-0194'),
('Silvia', 'Esquivel', 'silvia.esquivel@hotmail.com', '785-0195'),
('Ramiro', 'Chacón', 'ramiro.chacon@gmail.com', '5544-0196'),
('María', 'Velázquez', 'maria.velazquez@gmail.com', '5405-0197'),
('Rodrigo', 'Gómez', 'rodrigo.gomez@gmail.com', '5689-0198'),
('Cristina', 'Rangel', 'cristina.rangel@hotmail.com', '9696-0199'),
('Luis', 'Suárez', 'luis.suarez@gmail.com', '9608-0000');


-- Insertar 100 direcciones (cada cliente tiene una)
INSERT INTO addresses (customer_id, address, city, postal_code, country) VALUES
(1, 'Calle Falsa 123', 'Ciudad de México', '01000', 'México'),
(2, 'Av. Siempre Viva 742', 'Ciudad de México', '01000', 'México'),
(3, 'Calle Corrientes 1234', 'Buenos Aires', '1000', 'Argentina'),
(4, 'Av. Paulista 1000', 'São Paulo', '01310-100', 'Brasil'),
(5, 'Calle Mayor 5', 'Madrid', '28013', 'España'),
(6, 'Rúa das Flores 100', 'Lisboa', '1100-123', 'Portugal'),
(7, 'Rue de Rivoli 25', 'París', '75001', 'Francia'),
(8, 'Piazza del Duomo 1', 'Milán', '20121', 'Italia'),
(9, 'Königsallee 1', 'Düsseldorf', '40212', 'Alemania'),
(10, 'High Street 10', 'Londres', 'WC1N 3AX', 'Reino Unido'),
(11, '5th Avenue 789', 'Nueva York', '10022', 'EE.UU.'),
(12, 'Gran Vía 50', 'Barcelona', '08010', 'España'),
(13, 'Calle Lima 123', 'Lima', '15001', 'Perú'),
(14, 'Av. Recoleta 2000', 'Santiago', '8320000', 'Chile'),
(15, 'Calle Ocho 50', 'La Habana', '10400', 'Cuba'),
(16, 'Calle 21 12', 'Montevideo', '11300', 'Uruguay'),
(17, 'Calle Bolívar 450', 'Caracas', '1010', 'Venezuela'),
(18, 'Rambla Cataluña 99', 'Barcelona', '08007', 'España'),
(19, 'Calle 10 de Julio 100', 'Quito', '170401', 'Ecuador'),
(20, 'Calle El Salvador 3030', 'San Salvador', '01101', 'El Salvador'),
(21, 'Av. Reforma 1000', 'Guatemala', '01001', 'Guatemala'),
(22, 'Paseo de la Reforma 123', 'Ciudad de México', '01000', 'México'),
(23, 'Calle San Martín 100', 'Buenos Aires', '1000', 'Argentina'),
(24, 'Av. Atlântica 500', 'Río de Janeiro', '22021-000', 'Brasil'),
(25, 'Calle de Atocha 23', 'Madrid', '28012', 'España'),
(26, 'Rua Augusta 100', 'Lisboa', '1100-048', 'Portugal'),
(27, 'Rue Saint-Honoré 55', 'París', '75001', 'Francia'),
(28, 'Via Montenapoleone 15', 'Milán', '20121', 'Italia'),
(29, 'Marienplatz 1', 'Múnich', '80331', 'Alemania'),
(30, 'Oxford Street 15', 'Londres', 'W1D 1BS', 'Reino Unido'),
(31, 'Madison Avenue 100', 'Nueva York', '10016', 'EE.UU.'),
(32, 'Passeig de Gràcia 50', 'Barcelona', '08007', 'España'),
(33, 'Calle Arequipa 200', 'Lima', '15001', 'Perú'),
(34, 'Calle Miraflores 1000', 'Santiago', '7500000', 'Chile'),
(35, 'Calle Prado 101', 'La Habana', '10200', 'Cuba'),
(36, 'Bulevar España 200', 'Montevideo', '11300', 'Uruguay'),
(37, 'Calle Sucre 150', 'Caracas', '1010', 'Venezuela'),
(38, 'Rambla del Raval 10', 'Barcelona', '08001', 'España'),
(39, 'Calle Venezuela 200', 'Quito', '170401', 'Ecuador'),
(40, 'Calle Los Próceres 12', 'San Salvador', '01101', 'El Salvador'),
(41, 'Calle Bolívar 202', 'Guatemala', '01001', 'Guatemala'),
(42, 'Paseo de la Reforma 450', 'Ciudad de México', '01000', 'México'),
(43, 'Calle Lavalle 500', 'Buenos Aires', '1000', 'Argentina'),
(44, 'Av. Vieira Souto 1', 'Río de Janeiro', '22420-002', 'Brasil'),
(45, 'Calle Princesa 5', 'Madrid', '28008', 'España'),
(46, 'Rua da Prata 55', 'Lisboa', '1100-414', 'Portugal'),
(47, 'Rue Montorgueil 1', 'París', '75001', 'Francia'),
(48, 'Via della Spiga 22', 'Milán', '20121', 'Italia'),
(49, 'Kurfürstendamm 1', 'Berlín', '10719', 'Alemania'),
(50, 'Piccadilly 55', 'Londres', 'W1J 0DD', 'Reino Unido'),
(51, 'Park Avenue 500', 'Nueva York', '10022', 'EE.UU.'),
(52, 'Calle Aribau 150', 'Barcelona', '08036', 'España'),
(53, 'Calle Tacna 250', 'Lima', '15001', 'Perú'),
(54, 'Av. Apoquindo 5000', 'Santiago', '7550000', 'Chile'),
(55, 'Calle Neptuno 123', 'La Habana', '10300', 'Cuba'),
(56, 'Rambla República 400', 'Montevideo', '11300', 'Uruguay'),
(57, 'Av. Libertador 123', 'Caracas', '1010', 'Venezuela'),
(58, 'Rambla de Catalunya 85', 'Barcelona', '08008', 'España'),
(59, 'Calle Chile 300', 'Quito', '170401', 'Ecuador'),
(60, 'Calle Cuscatlán 11', 'San Salvador', '01101', 'El Salvador'),
(61, 'Av. Petapa 20', 'Guatemala', '01001', 'Guatemala'),
(62, 'Calle Madero 150', 'Ciudad de México', '01000', 'México'),
(63, 'Calle Maipú 200', 'Buenos Aires', '1000', 'Argentina'),
(64, 'Av. Presidente Vargas 1', 'Río de Janeiro', '20040-010', 'Brasil'),
(65, 'Calle Serrano 88', 'Madrid', '28006', 'España'),
(66, 'Rua Garrett 12', 'Lisboa', '1200-204', 'Portugal'),
(67, 'Rue du Faubourg Saint-Honoré 4', 'París', '75008', 'Francia'),
(68, 'Via Condotti 25', 'Roma', '00187', 'Italia'),
(69, 'Kudamm 10', 'Berlín', '10719', 'Alemania'),
(70, 'Regent Street 100', 'Londres', 'W1B 5TG', 'Reino Unido'),
(71, 'Broadway 1000', 'Nueva York', '10036', 'EE.UU.'),
(72, 'Calle Balmes 150', 'Barcelona', '08008', 'España'),
(73, 'Calle Surco 123', 'Lima', '15001', 'Perú'),
(74, 'Av. Providencia 200', 'Santiago', '7500000', 'Chile'),
(75, 'Calle Monte 500', 'La Habana', '10400', 'Cuba'),
(76, 'Bulevar Artigas 200', 'Montevideo', '11300', 'Uruguay'),
(77, 'Av. Francisco de Miranda 150', 'Caracas', '1010', 'Venezuela'),
(78, 'Rambla del Poblenou 100', 'Barcelona', '08005', 'España'),
(79, 'Calle Venezuela 250', 'Quito', '170401', 'Ecuador'),
(80, 'Calle Cuscatlán 21', 'San Salvador', '01101', 'El Salvador'),
(81, 'Calle Mariscal 10', 'Guatemala', '01001', 'Guatemala'),
(82, 'Paseo de la Reforma 789', 'Ciudad de México', '01000', 'México'),
(83, 'Calle Corrientes 200', 'Buenos Aires', '1000', 'Argentina'),
(84, 'Av. Vieira Souto 200', 'Río de Janeiro', '22420-002', 'Brasil'),
(85, 'Calle Alcalá 12', 'Madrid', '28014', 'España'),
(86, 'Rua Augusta 150', 'Lisboa', '1100-048', 'Portugal'),
(87, 'Rue des Rosiers 3', 'París', '75004', 'Francia'),
(88, 'Via del Corso 250', 'Roma', '00186', 'Italia'),
(89, 'Schlossstrasse 15', 'Berlín', '12163', 'Alemania'),
(90, 'Old Compton Street 50', 'Londres', 'W1D 4TJ', 'Reino Unido'),
(91, 'Lexington Avenue 500', 'Nueva York', '10017', 'EE.UU.'),
(92, 'Calle Aragón 50', 'Barcelona', '08009', 'España'),
(93, 'Calle Kennedy 400', 'Lima', '15001', 'Perú'),
(94, 'Calle Apoquindo 2000', 'Santiago', '7550000', 'Chile'),
(95, 'Calle Obispo 300', 'La Habana', '10200', 'Cuba'),
(96, 'Rambla Francia 600', 'Montevideo', '11300', 'Uruguay'),
(97, 'Calle Urdaneta 100', 'Caracas', '1010', 'Venezuela'),
(98, 'Rambla Prim 40', 'Barcelona', '08019', 'España'),
(99, 'Calle Colombia 123', 'Quito', '170401', 'Ecuador'),
(100, 'Calle de Los Volcanes 55', 'San Salvador', '01101', 'El Salvador');


INSERT INTO orders (customer_id, order_date, total) VALUES
(1, '2022-03-08', 150.00),
(2, '2022-01-05', 120.00),
(3, '2021-03-10', 300.00),
(4, '2023-01-12', 150.00),
(5, '2023-01-01', 120.00),
(6, '2023-01-01', 300.00),
(7, '2023-02-01', 150.00),
(8, '2023-02-05', 120.00),
(9, '2023-02-10', 300.00),
(10, '2022-12-01', 150.00),
(11, '2021-02-01', 120.00),
(12, '2021-02-01', 300.00),
(13, '2023-03-01', 150.00),
(14, '2021-03-08', 120.00),
( 15, '2023-03-10', 300.00),
( 16, '2023-03-01', 150.00),
( 17, '2023-12-01', 120.00),
( 18, '2023-12-01', 300.00),
( 19, '2023-04-01', 150.00),
( 20, '2023-04-05', 120.00),
( 21, '2021-03-09', 300.00),
( 22, '2023-03-09', 150.00),
( 23, '2021-04-09', 120.00),
( 24, '2023-04-09', 300.00),
( 25, '2023-05-01', 150.00),
( 26, '2022-05-08', 120.00),
( 27, '2022-12-10', 300.00),
( 28, '2023-05-09', 150.00),
( 29, '2023-05-09', 120.00),
( 30, '2023-05-09', 300.00),
( 31, '2023-06-01', 150.00),
( 32, '2023-12-05', 120.00),
( 33, '2021-06-10', 300.00),
( 34, '2023-06-09', 150.00),
( 35, '2021-03-03', 120.00),
( 36, '2023-06-03', 300.00),
( 37, '2023-03-01', 150.00),
( 38, '2023-07-08', 120.00),
( 39, '2023-07-10', 300.00),
(40, '2022-07-03', 150.00),
( 41, '2022-07-03', 120.00),
( 42, '2023-07-03', 300.00),
( 43, '2023-08-03', 150.00),
( 44, '2023-12-05', 120.00),
( 45, '2023-08-10', 300.00),
( 46, '2023-08-03', 150.00),
( 47, '2023-08-03', 120.00),
( 48, '2023-03-03', 300.00),
( 49, '2021-09-08', 150.00),
( 50, '2021-03-05', 120.00),
( 51, '2023-09-10', 300.00),
( 52, '2023-09-03', 150.00),
( 53, '2022-09-03', 120.00),
( 54, '2023-09-03', 300.00),
( 55, '2022-10-01', 150.00),
( 56, '2023-03-05', 120.00),
( 57, '2023-10-10', 300.00),
( 58, '2023-03-01', 150.00),
( 59, '2023-12-02', 120.00),
( 60, '2023-10-02', 300.00),
( 61, '2021-11-08', 150.00),
( 62, '2023-11-05', 120.00),
( 63, '2021-11-10', 300.00),
( 64, '2023-11-02', 150.00),
( 65, '2023-11-02', 120.00),
( 66, '2023-11-02', 300.00),
( 67, '2022-12-01', 150.00),
( 68, '2023-03-02', 120.00),
( 69, '2023-12-08', 300.00),
( 70, '2023-03-08', 150.00),
( 71, '2023-12-05', 120.00),
( 72, '2021-12-05', 300.00),
( 73, '2024-12-01', 150.00),
( 74, '2021-01-05', 120.00),
( 75, '2024-12-10', 300.00),
( 76, '2024-01-05', 150.00),
( 77, '2024-01-05', 120.00),
( 78, '2024-01-08', 300.00),
( 79, '2021-02-01', 150.00),
( 80, '2024-03-05', 120.00),
( 81, '2021-02-10', 300.00),
( 82, '2024-03-08', 150.00),
( 83, '2024-02-08', 120.00),
( 84, '2024-02-08', 300.00),
( 85, '2024-03-01', 150.00),
( 86, '2024-03-08', 120.00),
( 87, '2021-03-08', 300.00),
( 88, '2024-03-08', 150.00),
( 89, '2021-03-08', 120.00),
( 90, '2024-03-10', 300.00),
( 91, '2024-04-01', 150.00),
( 92, '2024-04-05', 120.00),
( 93, '2024-03-10', 300.00),
( 94, '2024-04-10', 150.00),
( 95, '2024-12-10', 120.00),
( 96, '2024-04-10', 300.00),
( 97, '2024-05-10', 150.00),
( 98, '2021-12-05', 120.00),
( 99, '2024-05-08', 300.00),
( 100, '2021-05-10', 150.00);



-- Insertar categorías
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books'),
('Home & Kitchen'),
('Sports & Outdoors'),
('Health & Personal Care'),
('Toys & Games'),
('Automotive'),
('Jewelry'),
('Office Supplies'),
('Beauty'),
('Tools & Home Improvement'),
('Pet Supplies'),
('Grocery'),
('Baby Products'),
('Arts, Crafts & Sewing'),
('Musical Instruments'),
('Computers'),
('Cell Phones'),
('Outdoor Recreation'),
('Garden & Outdoor'),
('Appliances'),
('Furniture'),
('Video Games'),
('Software'),
('Movies & TV'),
('Digital Music'),
('Collectibles'),
('Handmade'),
('Luxury'),
('Watches'),
('Personalized'),
('Seasonal'),
('Travel'),
('Fitness'),
('Home Improvement'),
('Crafts'),
('Party Supplies'),
('Footwear'),
('Kids'),
('Furniture & Décor'),
('Bedding'),
('Outdoor Furniture'),
('Office Furniture'),
('Small Appliances'),
('Kitchenware'),
('Tableware'),
('Barware'),
('Storage & Organization'),
('Cleaning Supplies'),
('Home Safety'),
('Mattresses'),
('Home Lighting'),
('Curtains & Blinds'),
('Rugs'),
('Wall Art'),
('Heating & Cooling'),
('Sheds & Outdoor Storage'),
('Patio Furniture'),
('Camping & Hiking'),
('Fishing'),
('Cycling'),
('Boating'),
('Winter Sports'),
('Golf'),
('Tennis'),
('Running'),
('Yoga'),
('Swimming'),
('Horseback Riding'),
('Hiking'),
('Rock Climbing'),
('Kayaking'),
('Scuba Diving'),
('Snowboarding'),
('Skiing'),
('Snowshoeing'),
('Skateboarding'),
('Billiards'),
('Table Tennis'),
('Bowling'),
('Darts'),
('Air Hockey'),
('Pool'),
('Poker'),
('Board Games'),
('Puzzles'),
('Building Toys'),
('Educational Toys'),
('Remote Control Toys'),
('Ride-On Toys'),
('Dolls'),
('Action Figures'),
('Games for Kids'),
('Games for Adults'),
('Craft Kits'),
('Science Kits'),
('Art Supplies'),
('Writing Supplies'),
('Office Electronics'),
('Ergonomic Furniture'),
('Business Supplies'),
('Professional Development'),
('Learning & Education');


-- Insertar productos
INSERT INTO products (name, description, price, stock_quantity, category_id) VALUES
('Smartphone', 'Latest model smartphone with high resolution camera', 699.99, 50, 1),
('Laptop', 'Powerful laptop with fast processor and large storage', 1199.99, 30, 1),
('Headphones', 'Noise-cancelling over-ear headphones', 199.99, 100, 1),
('T-Shirt', 'Comfortable cotton t-shirt in various colors', 19.99, 200, 2),
('Jeans', 'Denim jeans with a modern fit', 49.99, 150, 2),
('Jacket', 'Warm jacket suitable for winter', 89.99, 80, 2),
('Novel', 'Bestselling fiction novel', 14.99, 120, 3),
('Cookbook', 'Delicious recipes for home cooking', 29.99, 90, 3),
('Magazine', 'Monthly magazine on lifestyle and culture', 6.99, 200, 3),
('Blender', 'High-power blender for smoothies and soups', 89.99, 60, 4),
('Toaster', 'Two-slice toaster with adjustable settings', 39.99, 80, 4),
('Sofa', 'Comfortable sofa for living room', 499.99, 20, 4),
('Tent', 'Waterproof camping tent for 4 people', 129.99, 50, 5),
('Bicycle', 'Mountain bike with durable frame', 299.99, 25, 5),
('Fishing Rod', 'Fishing rod with adjustable length', 79.99, 40, 5),
('Vitamin Supplements', 'Daily multivitamins for overall health', 29.99, 150, 6),
('Shampoo', 'Gentle shampoo for all hair types', 14.99, 200, 6),
('Toothbrush', 'Soft-bristled toothbrush for sensitive gums', 4.99, 300, 6),
('Action Figure', 'Collectible action figure from popular movie', 24.99, 100, 7),
('Board Game', 'Family-friendly board game with fun challenges', 34.99, 80, 7),
('Puzzle', '500-piece jigsaw puzzle for relaxation', 19.99, 120, 7),
('Car Battery', 'Durable car battery for reliable performance', 129.99, 40, 8),
('Seat Cover', 'Protective seat cover for car seats', 49.99, 60, 8),
('GPS Navigator', 'Portable GPS navigator with updated maps', 199.99, 25, 8),
('Necklace', 'Elegant gold necklace with gemstone', 299.99, 50, 9),
('Earrings', 'Stylish earrings with sparkling crystals', 149.99, 80, 9),
('Ring', 'Classic silver ring with a unique design', 199.99, 40, 9),
('Printer', 'Inkjet printer with wireless connectivity', 99.99, 30, 10),
('Desk Chair', 'Ergonomic desk chair for comfortable seating', 129.99, 50, 10),
('Laptop Stand', 'Adjustable laptop stand for better ergonomics', 39.99, 70, 10),
('Lipstick', 'Long-lasting lipstick in various shades', 24.99, 150, 11),
('Face Cream', 'Moisturizing face cream for daily use', 34.99, 100, 11),
('Perfume', 'Luxurious perfume with a floral scent', 79.99, 80, 11),
('Drill', 'Cordless drill with multiple speed settings', 129.99, 40, 12),
('Screwdriver Set', 'Complete screwdriver set with various sizes', 29.99, 100, 12),
('Workbench', 'Sturdy workbench for DIY projects', 199.99, 20, 12),
('Dog Food', 'Nutritional dog food with balanced ingredients', 39.99, 150, 13),
('Cat Toys', 'Interactive toys for playful cats', 14.99, 100, 13),
('Pet Bed', 'Comfortable pet bed for dogs and cats', 49.99, 60, 13),
('Coffee', 'Freshly ground coffee for brewing', 12.99, 200, 14),
('Snacks', 'Assorted snacks for all tastes', 4.99, 300, 14),
('Juice', 'Healthy fruit juice with no added sugar', 3.99, 150, 14),
('Diapers', 'Absorbent diapers for infants', 29.99, 100, 15),
('Baby Lotion', 'Gentle lotion for baby’s sensitive skin', 14.99, 150, 15),
('Baby Bottle', 'BPA-free baby bottle with a comfortable grip', 9.99, 200, 15),
('Acrylic Paints', 'Set of acrylic paints in various colors', 19.99, 80, 16),
('Sketchbook', 'High-quality sketchbook for artists', 12.99, 100, 16),
('Sewing Kit', 'Complete sewing kit with threads and needles', 24.99, 60, 16),
('Guitar', 'Acoustic guitar with rich sound', 199.99, 30, 17),
('Piano', 'Digital piano with weighted keys', 999.99, 10, 17),
('Drum Set', 'Complete drum set for beginners and professionals', 399.99, 15, 17),
('Desktop Computer', 'High-performance desktop computer for gaming', 799.99, 40, 18),
('Monitor', '27-inch monitor with high resolution', 199.99, 50, 18),
('Keyboard', 'Mechanical keyboard with customizable keys', 49.99, 70, 18),
('Smartphone Case', 'Durable case for protecting your smartphone', 19.99, 100, 19),
('Tablet', 'Versatile tablet with a high-resolution display', 499.99, 30, 19),
('Smartwatch', 'Smartwatch with fitness tracking features', 199.99, 40, 19),
('Tent', 'Portable tent for outdoor camping', 129.99, 50, 20),
('Camping Stove', 'Compact camping stove for outdoor cooking', 79.99, 30, 20),
('Sleeping Bag', 'Warm sleeping bag for camping trips', 59.99, 40, 20),
('Lawn Chair', 'Comfortable lawn chair for outdoor relaxation', 49.99, 60, 21),
('Grill', 'Charcoal grill for outdoor cooking', 299.99, 20, 21),
('Patio Heater', 'Patio heater for outdoor warmth', 149.99, 15, 21),
('Air Conditioner', 'Window air conditioner with remote control', 299.99, 25, 22),
('Vacuum Cleaner', 'Powerful vacuum cleaner for all floors', 149.99, 40, 22),
('Dishwasher', 'Energy-efficient dishwasher with multiple settings', 499.99, 15, 22),
('Dining Table', 'Elegant dining table with seating for six', 399.99, 30, 23),
('Bookshelf', 'Wooden bookshelf with adjustable shelves', 129.99, 50, 23),
('Bed Frame', 'Sturdy bed frame with modern design', 249.99, 20, 23),
('Game Console', 'Latest generation gaming console', 299.99, 40, 24),
('Video Game', 'Popular video game for all ages', 59.99, 100, 24),
('VR Headset', 'Virtual reality headset for immersive experiences', 199.99, 30, 24),
('Movie DVD', 'DVD of the latest blockbuster movie', 14.99, 100, 25),
('TV Series Box Set', 'Complete box set of popular TV series', 89.99, 30, 25),
('Streaming Subscription', 'Subscription for online streaming service', 99.99, 20, 25),
('MP3 Player', 'Portable MP3 player with large storage', 79.99, 40, 26),
('Bluetooth Speaker', 'Wireless Bluetooth speaker with high sound quality', 129.99, 30, 26),
('Digital Camera', 'High-resolution digital camera with multiple features', 499.99, 15, 26),
('Posters', 'Decorative posters for wall art', 9.99, 200, 27),
('Collectible Figurines', 'Limited edition collectible figurines', 39.99, 100, 27),
('Antique Coins', 'Rare antique coins for collectors', 199.99, 50, 27),
('Handmade Jewelry', 'Unique handmade jewelry with intricate designs', 49.99, 80, 28),
('Custom Artwork', 'Personalized artwork created by local artists', 149.99, 30, 28),
('Craft Supplies', 'Assorted craft supplies for various projects', 24.99, 100, 28),
('Luxury Watch', 'Premium luxury watch with elegant design', 999.99, 20, 29),
('Designer Handbag', 'High-end designer handbag for special occasions', 499.99, 15, 29),
('Bluetooth Headphones', 'Wireless headphones with long battery life', 129.99, 40, 1),
('4K TV', 'Ultra HD 4K television with smart features', 799.99, 25, 1),
('Smart Home Hub', 'Central hub for smart home devices', 149.99, 50, 1),
('Winter Coat', 'Heavy-duty winter coat with insulation', 159.99, 60, 2),
('Sweater', 'Soft wool sweater in various colors', 39.99, 90, 2),
('Running Shoes', 'Comfortable running shoes with good cushioning', 89.99, 70, 2),
('Sci-Fi Novel', 'Popular science fiction novel', 19.99, 110, 3),
('Cookware Set', 'Complete cookware set with pots and pans', 199.99, 40, 4),
('Microwave Oven', 'Compact microwave oven with multiple settings', 79.99, 35, 4),
('Sleeping Bag', 'Lightweight sleeping bag for backpacking', 59.99, 45, 5),
('Fishing Net', 'Durable fishing net for various types of fishing', 29.99, 55, 5),
('Fishing Bait', 'Assorted fishing bait for different fish species', 14.99, 75, 5),
('Sports Watch', 'Watch with fitness tracking and heart rate monitor', 199.99, 30, 6),
('Sunglasses', 'Stylish sunglasses with UV protection', 149.99, 50, 29);



-- Insertar detalles de las órdenes
INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1, 1, 2, 699.99),  -- Smartphone x2
(1, 2, 1, 1199.99), -- Laptop x1
(1, 3, 1, 199.99),  -- Headphones x1
(2, 4, 3, 19.99),   -- T-Shirt x3
(2, 5, 2, 49.99),   -- Jeans x2
(2, 6, 1, 89.99),   -- Jacket x1
(3, 7, 1, 14.99),   -- Novel x1
(3, 8, 2, 29.99),   -- Cookbook x2
(3, 9, 5, 6.99),    -- Magazine x5
(4, 10, 1, 89.99),  -- Blender x1
(4, 11, 2, 39.99),  -- Toaster x2
(4, 12, 1, 499.99), -- Sofa x1
(5, 13, 2, 129.99), -- Tent x2
(5, 14, 1, 299.99), -- Bicycle x1
(5, 15, 3, 79.99),  -- Fishing Rod x3
(6, 16, 4, 29.99),  -- Vitamin Supplements x4
(6, 17, 6, 14.99),  -- Shampoo x6
(6, 18, 5, 4.99),   -- Toothbrush x5
(7, 19, 1, 24.99),  -- Action Figure x1
(7, 20, 1, 34.99),  -- Board Game x1
(7, 21, 2, 19.99),  -- Puzzle x2
(8, 22, 1, 129.99), -- Car Battery x1
(8, 23, 2, 49.99),  -- Seat Cover x2
(8, 24, 1, 199.99), -- GPS Navigator x1
(9, 25, 1, 299.99), -- Necklace x1
(9, 26, 2, 149.99), -- Earrings x2
(9, 27, 1, 199.99), -- Ring x1
(10, 28, 2, 99.99), -- Printer x2
(10, 29, 1, 129.99),-- Desk Chair x1
(10, 30, 1, 39.99), -- Laptop Stand x1
(11, 31, 3, 24.99), -- Lipstick x3
(11, 32, 2, 34.99), -- Face Cream x2
(11, 33, 1, 79.99), -- Perfume x1
(12, 34, 2, 129.99),-- Drill x2
(12, 35, 3, 29.99), -- Screwdriver Set x3
(12, 36, 1, 199.99),-- Workbench x1
(13, 37, 4, 39.99), -- Dog Food x4
(13, 38, 6, 14.99), -- Cat Toys x6
(13, 39, 2, 49.99), -- Pet Bed x2
(14, 40, 3, 12.99), -- Coffee x3
(14, 41, 5, 4.99),  -- Snacks x5
(14, 42, 2, 3.99),  -- Juice x2
(15, 43, 2, 29.99), -- Diapers x2
(15, 44, 4, 14.99), -- Baby Lotion x4
(15, 45, 3, 9.99),  -- Baby Bottle x3
(16, 46, 1, 19.99), -- Acrylic Paints x1
(16, 47, 2, 12.99), -- Sketchbook x2
(16, 48, 1, 24.99), -- Sewing Kit x1
(17, 49, 1, 199.99),-- Guitar x1
(17, 50, 1, 999.99),-- Piano x1
(17, 51, 1, 399.99),-- Drum Set x1
(18, 52, 2, 799.99),-- Desktop Computer x2
(18, 53, 1, 199.99),-- Monitor x1
(18, 54, 3, 49.99), -- Keyboard x3
(19, 55, 3, 19.99), -- Smartphone Case x3
(19, 56, 1, 499.99),-- Tablet x1
(19, 57, 1, 199.99),-- Smartwatch x1
(20, 58, 1, 129.99),-- Tent x1
(20, 59, 1, 79.99), -- Camping Stove x1
(20, 60, 2, 59.99), -- Sleeping Bag x2
(21, 61, 2, 49.99), -- Lawn Chair x2
(21, 62, 1, 299.99),-- Grill x1
(21, 63, 1, 149.99),-- Patio Heater x1
(22, 64, 1, 299.99),-- Air Conditioner x1
(22, 65, 1, 149.99),-- Vacuum Cleaner x1
(22, 66, 1, 499.99),-- Dishwasher x1
(23, 67, 1, 399.99),-- Dining Table x1
(23, 68, 2, 129.99),-- Bookshelf x2
(23, 69, 1, 249.99),-- Bed Frame x1
(24, 70, 1, 299.99),-- Game Console x1
(24, 71, 2, 59.99), -- Video Game x2
(24, 72, 1, 199.99),-- VR Headset x1
(25, 73, 2, 14.99), -- Movie DVD x2
(25, 74, 1, 89.99), -- TV Series Box Set x1
(25, 75, 1, 99.99), -- Streaming Subscription x1
(26, 76, 1, 79.99), -- MP3 Player x1
(26, 77, 2, 129.99),-- Bluetooth Speaker x2
(26, 78, 1, 499.99),-- Digital Camera x1
(27, 79, 3, 9.99),  -- Posters x3
(27, 80, 2, 39.99), -- Collectible Figurines x2
(27, 81, 1, 199.99),-- Antique Coins x1
(28, 82, 2, 49.99), -- Handmade Jewelry x2
(28, 83, 1, 149.99),-- Custom Artwork x1
(28, 84, 3, 24.99); -- Craft Supplies x3


-- Insertar métodos de envío
INSERT INTO shipping_methods (method_name, shipping_cost) VALUES
('Standard Shipping', 5.99),      -- Envío estándar con costo bajo
('Express Shipping', 12.99),       -- Envío exprés para entregas rápidas
('Two-Day Shipping', 19.99),       -- Envío en dos días con mayor prioridad
('Overnight Shipping', 29.99),     -- Envío nocturno para entrega al día siguiente
('International Shipping', 49.99); -- Envío internacional para pedidos fuera del país



INSERT INTO order_shipping (order_id, shipping_method_id, shipping_address_id, shipped_date) VALUES
(1, 1, 1, '2022-03-08'), -- Pedido 1, Envío estándar, Dirección 1, Fecha de envío 8 de marzo de 2022
(2, 2, 2, '2022-01-05'), -- Pedido 2, Envío exprés, Dirección 2, Fecha de envío 5 de enero de 2022
(3, 3, 3, '2021-03-10'), -- Pedido 3, Envío en dos días, Dirección 3, Fecha de envío 10 de marzo de 2021
(4, 4, 4, '2023-01-12'), -- Pedido 4, Envío nocturno, Dirección 4, Fecha de envío 12 de enero de 2023
(5, 5, 5, '2023-01-01'), -- Pedido 5, Envío internacional, Dirección 5, Fecha de envío 1 de enero de 2023
(6, 1, 6, '2023-01-01'), -- Pedido 6, Envío estándar, Dirección 6, Fecha de envío 1 de enero de 2023
(7, 2, 7, '2023-02-01'), -- Pedido 7, Envío exprés, Dirección 7, Fecha de envío 1 de febrero de 2023
(8, 3, 8, '2023-02-05'), -- Pedido 8, Envío en dos días, Dirección 8, Fecha de envío 5 de febrero de 2023
(9, 4, 9, '2023-02-10'), -- Pedido 9, Envío nocturno, Dirección 9, Fecha de envío 10 de febrero de 2023
(10, 5, 10, '2022-12-01'), -- Pedido 10, Envío internacional, Dirección 10, Fecha de envío 1 de diciembre de 2022
(11, 1, 11, '2021-02-01'), -- Pedido 11, Envío estándar, Dirección 11, Fecha de envío 1 de febrero de 2021
(12, 2, 12, '2021-02-01'), -- Pedido 12, Envío exprés, Dirección 12, Fecha de envío 1 de febrero de 2021
(13, 3, 13, '2023-03-01'), -- Pedido 13, Envío en dos días, Dirección 13, Fecha de envío 1 de marzo de 2023
(14, 4, 14, '2021-03-08'), -- Pedido 14, Envío nocturno, Dirección 14, Fecha de envío 8 de marzo de 2021
(15, 5, 15, '2023-03-10'), -- Pedido 15, Envío internacional, Dirección 15, Fecha de envío 10 de marzo de 2023
(16, 1, 16, '2023-03-01'), -- Pedido 16, Envío estándar, Dirección 16, Fecha de envío 1 de marzo de 2023
(17, 2, 17, '2023-12-01'), -- Pedido 17, Envío exprés, Dirección 17, Fecha de envío 1 de diciembre de 2023
(18, 3, 18, '2023-12-01'), -- Pedido 18, Envío en dos días, Dirección 18, Fecha de envío 1 de diciembre de 2023
(19, 4, 19, '2023-04-01'), -- Pedido 19, Envío nocturno, Dirección 19, Fecha de envío 1 de abril de 2023
(20, 5, 20, '2023-04-05'), -- Pedido 20, Envío internacional, Dirección 20, Fecha de envío 5 de abril de 2023
(21, 1, 21, '2021-03-09'), -- Pedido 21, Envío estándar, Dirección 21, Fecha de envío 9 de marzo de 2021
(22, 2, 22, '2023-03-09'), -- Pedido 22, Envío exprés, Dirección 22, Fecha de envío 9 de marzo de 2023
(23, 3, 23, '2021-04-09'), -- Pedido 23, Envío en dos días, Dirección 23, Fecha de envío 9 de abril de 2021
(24, 4, 24, '2023-04-09'), -- Pedido 24, Envío nocturno, Dirección 24, Fecha de envío 9 de abril de 2023
(25, 5, 25, '2023-05-01'), -- Pedido 25, Envío internacional, Dirección 25, Fecha de envío 1 de mayo de 2023
(26, 1, 26, '2022-05-08'), -- Pedido 26, Envío estándar, Dirección 26, Fecha de envío 8 de mayo de 2022
(27, 2, 27, '2022-12-10'), -- Pedido 27, Envío exprés, Dirección 27, Fecha de envío 10 de diciembre de 2022
(28, 3, 28, '2023-05-09'), -- Pedido 28, Envío en dos días, Dirección 28, Fecha de envío 9 de mayo de 2023
(29, 4, 29, '2023-05-09'), -- Pedido 29, Envío nocturno, Dirección 29, Fecha de envío 9 de mayo de 2023
(30, 5, 30, '2023-05-09'), -- Pedido 30, Envío internacional, Dirección 30, Fecha de envío 9 de mayo de 2023
(31, 1, 31, '2023-06-01'), -- Pedido 31, Envío estándar, Dirección 31, Fecha de envío 1 de junio de 2023
(32, 2, 32, '2023-12-05'), -- Pedido 32, Envío exprés, Dirección 32, Fecha de envío 5 de diciembre de 2023
(33, 3, 33, '2021-06-10'), -- Pedido 33, Envío en dos días, Dirección 33, Fecha de envío 10 de junio de 2021
(34, 4, 34, '2023-06-09'), -- Pedido 34, Envío nocturno, Dirección 34, Fecha de envío 9 de junio de 2023
(35, 5, 35, '2021-03-03'), -- Pedido 35, Envío internacional, Dirección 35, Fecha de envío 3 de marzo de 2021
(36, 1, 36, '2023-06-03'), -- Pedido 36, Envío estándar, Dirección 36, Fecha de envío 3 de junio de 2023
(37, 2, 37, '2023-03-01'), -- Pedido 37, Envío exprés, Dirección 37, Fecha de envío 1 de marzo de 2023
(38, 3, 38, '2023-07-08'), -- Pedido 38, Envío en dos días, Dirección 38, Fecha de envío 8 de julio de 2023
(39, 4, 39, '2023-07-10'), -- Pedido 39, Envío nocturno, Dirección 39, Fecha de envío 10 de julio de 2023
(40, 5, 40, '2022-07-03'), -- Pedido 40, Envío internacional, Dirección 40, Fecha de envío 3 de julio de 2022
(41, 1, 41, '2022-07-03'), -- Pedido 41, Envío estándar, Dirección 41, Fecha de envío 3 de julio de 2022
(42, 2, 42, '2023-07-03'), -- Pedido 42, Envío exprés, Dirección 42, Fecha de envío 3 de julio de 2023
(43, 3, 43, '2023-08-03'), -- Pedido 43, Envío en dos días, Dirección 43, Fecha de envío 3 de agosto de 2023
(44, 4, 44, '2023-12-05'), -- Pedido 44, Envío nocturno, Dirección 44, Fecha de envío 5 de diciembre de 2023
(45, 5, 45, '2023-08-10'), -- Pedido 45, Envío internacional, Dirección 45, Fecha de envío 10 de agosto de 2023
(46, 1, 46, '2023-08-03'), -- Pedido 46, Envío estándar, Dirección 46, Fecha de envío 3 de agosto de 2023
(47, 2, 47, '2023-08-03'), -- Pedido 47, Envío exprés, Dirección 47, Fecha de envío 3 de agosto de 2023
(48, 3, 48, '2023-03-03'), -- Pedido 48, Envío en dos días, Dirección 48, Fecha de envío 3 de marzo de 2023
(49, 4, 49, '2021-09-08'), -- Pedido 49, Envío nocturno, Dirección 49, Fecha de envío 8 de septiembre de 2021
(50, 5, 50, '2021-03-05'), -- Pedido 50, Envío internacional, Dirección 50, Fecha de envío 5 de marzo de 2021
(51, 1, 51, '2023-09-10'), -- Pedido 51, Envío estándar, Dirección 51, Fecha de envío 10 de septiembre de 2023
(52, 2, 52, '2023-09-03'), -- Pedido 52, Envío exprés, Dirección 52, Fecha de envío 3 de septiembre de 2023
(53, 3, 53, '2022-09-03'), -- Pedido 53, Envío en dos días, Dirección 53, Fecha de envío 3 de septiembre de 2022
(54, 4, 54, '2023-09-03'), -- Pedido 54, Envío nocturno, Dirección 54, Fecha de envío 3 de septiembre de 2023
(55, 5, 55, '2022-10-01'), -- Pedido 55, Envío internacional, Dirección 55, Fecha de envío 1 de octubre de 2022
(56, 1, 56, '2023-03-05'), -- Pedido 56, Envío estándar, Dirección 56, Fecha de envío 5 de marzo de 2023
(57, 2, 57, '2023-10-10'), -- Pedido 57, Envío exprés, Dirección 57, Fecha de envío 10 de octubre de 2023
(58, 3, 58, '2023-03-01'), -- Pedido 58, Envío en dos días, Dirección 58, Fecha de envío 1 de marzo de 2023
(59, 4, 59, '2023-12-02'), -- Pedido 59, Envío nocturno, Dirección 59, Fecha de envío 2 de diciembre de 2023
(60, 5, 60, '2023-10-02'), -- Pedido 60, Envío internacional, Dirección 60, Fecha de envío 2 de octubre de 2023
(61, 1, 61, '2021-11-08'), -- Pedido 61, Envío estándar, Dirección 61, Fecha de envío 8 de noviembre de 2021
(62, 2, 62, '2023-11-05'), -- Pedido 62, Envío exprés, Dirección 62, Fecha de envío 5 de noviembre de 2023
(63, 3, 63, '2021-11-10'), -- Pedido 63, Envío en dos días, Dirección 63, Fecha de envío 10 de noviembre de 2021
(64, 4, 64, '2023-11-02'), -- Pedido 64, Envío nocturno, Dirección 64, Fecha de envío 2 de noviembre de 2023
(65, 5, 65, '2023-11-02'), -- Pedido 65, Envío internacional, Dirección 65, Fecha de envío 2 de noviembre de 2023
(66, 1, 66, '2023-11-02'), -- Pedido 66, Envío estándar, Dirección 66, Fecha de envío 2 de noviembre de 2023
(67, 2, 67, '2022-12-01'), -- Pedido 67, Envío exprés, Dirección 67, Fecha de envío 1 de diciembre de 2022
(68, 3, 68, '2023-03-02'), -- Pedido 68, Envío en dos días, Dirección 68, Fecha de envío 2 de marzo de 2023
(69, 4, 69, '2023-12-08'), -- Pedido 69, Envío nocturno, Dirección 69, Fecha de envío 8 de diciembre de 2023
(70, 5, 70, '2023-03-08'), -- Pedido 70, Envío internacional, Dirección 70, Fecha de envío 8 de marzo de 2023
(71, 1, 71, '2023-12-05'), -- Pedido 71, Envío estándar, Dirección 71, Fecha de envío 5 de diciembre de 2023
(72, 2, 72, '2021-12-05'), -- Pedido 72, Envío exprés, Dirección 72, Fecha de envío 5 de diciembre de 2021
(73, 3, 73, '2024-12-01'), -- Pedido 73, Envío en dos días, Dirección 73, Fecha de envío 1 de diciembre de 2024
(74, 4, 74, '2021-01-05'), -- Pedido 74, Envío nocturno, Dirección 74, Fecha de envío 5 de enero de 2021
(75, 5, 75, '2024-12-10'), -- Pedido 75, Envío internacional, Dirección 75, Fecha de envío 10 de diciembre de 2024
(76, 1, 76, '2024-01-05'), -- Pedido 76, Envío estándar, Dirección 76, Fecha de envío 5 de enero de 2024
(77, 2, 77, '2024-01-05'), -- Pedido 77, Envío exprés, Dirección 77, Fecha de envío 5 de enero de 2024
(78, 3, 78, '2024-01-08'), -- Pedido 78, Envío en dos días, Dirección 78, Fecha de envío 8 de enero de 2024
(79, 4, 79, '2021-02-01'), -- Pedido 79, Envío nocturno, Dirección 79, Fecha de envío 1 de febrero de 2021
(80, 5, 80, '2024-03-05'), -- Pedido 80, Envío internacional, Dirección 80, Fecha de envío 5 de marzo de 2024
(81, 1, 81, '2021-02-10'), -- Pedido 81, Envío estándar, Dirección 81, Fecha de envío 10 de febrero de 2021
(82, 2, 82, '2024-03-08'), -- Pedido 82, Envío exprés, Dirección 82, Fecha de envío 8 de marzo de 2024
(83, 3, 83, '2024-02-08'), -- Pedido 83, Envío en dos días, Dirección 83, Fecha de envío 8 de febrero de 2024
(84, 4, 84, '2024-02-08'), -- Pedido 84, Envío nocturno, Dirección 84, Fecha de envío 8 de febrero de 2024
(85, 5, 85, '2024-03-01'), -- Pedido 85, Envío internacional, Dirección 85, Fecha de envío 1 de marzo de 2024
(86, 1, 86, '2024-03-08'), -- Pedido 86, Envío estándar, Dirección 86, Fecha de envío 8 de marzo de 2024
(87, 2, 87, '2021-03-08'), -- Pedido 87, Envío exprés, Dirección 87, Fecha de envío 8 de marzo de 2021
(88, 3, 88, '2024-03-08'), -- Pedido 88, Envío en dos días, Dirección 88, Fecha de envío 8 de marzo de 2024
(89, 4, 89, '2021-03-08'), -- Pedido 89, Envío nocturno, Dirección 89, Fecha de envío 8 de marzo de 2021
(90, 5, 90, '2024-03-10'), -- Pedido 90, Envío internacional, Dirección 90, Fecha de envío 10 de marzo de 2024
(91, 1, 91, '2024-04-01'), -- Pedido 91, Envío estándar, Dirección 91, Fecha de envío 1 de abril de 2024
(92, 2, 92, '2024-04-05'), -- Pedido 92, Envío exprés, Dirección 92, Fecha de envío 5 de abril de 2024
(93, 3, 93, '2024-03-10'), -- Pedido 93, Envío en dos días, Dirección 93, Fecha de envío 10 de marzo de 2024
(94, 4, 94, '2024-04-10'), -- Pedido 94, Envío nocturno, Dirección 94, Fecha de envío 10 de abril de 2024
(95, 5, 95, '2024-12-10'), -- Pedido 95, Envío internacional, Dirección 95, Fecha de envío 10 de diciembre de 2024
(96, 1, 96, '2024-04-10'), -- Pedido 96, Envío estándar, Dirección 96, Fecha de envío 10 de abril de 2024
(97, 2, 97, '2024-05-10'), -- Pedido 97, Envío exprés, Dirección 97, Fecha de envío 10 de mayo de 2024
(98, 3, 98, '2021-12-05'), -- Pedido 98, Envío en dos días, Dirección 98, Fecha de envío 5 de diciembre de 2021
(99, 4, 99, '2024-05-08'), -- Pedido 99, Envío nocturno, Dirección 99, Fecha de envío 8 de mayo de 2024
(100, 5, 100, '2021-05-10'); -- Pedido 100, Envío internacional, Dirección 100, Fecha de envío 10 de mayo de 2021


INSERT INTO payment_methods (method_name) VALUES
('Tarjeta de crédito'),
('Tarjeta de débito'),
('PayPal'),
('Transferencia bancaria'),
('Efectivo'),
('Cheque'),
('Pago en tienda'),
('Financiación'),
('Regalo'),
('SinpeMovil');


INSERT INTO payments (order_id, payment_date, amount, payment_method_id) VALUES
(1, '2022-03-08', 150.00, 1), -- Pedido 1, Fecha de pago 8 de marzo de 2022, Modo de pago: Tarjeta de crédito
(2, '2022-01-05', 120.00, 2), -- Pedido 2, Fecha de pago 5 de enero de 2022, Modo de pago: Tarjeta de débito
(3, '2021-03-10', 300.00, 3), -- Pedido 3, Fecha de pago 10 de marzo de 2021, Modo de pago: PayPal
(4, '2023-01-12', 150.00, 4), -- Pedido 4, Fecha de pago 12 de enero de 2023, Modo de pago: Transferencia bancaria
(5, '2023-01-01', 120.00, 5), -- Pedido 5, Fecha de pago 1 de enero de 2023, Modo de pago: Efectivo
(6, '2023-01-01', 300.00, 6), -- Pedido 6, Fecha de pago 1 de enero de 2023, Modo de pago: Cheque
(7, '2023-02-01', 150.00, 7), -- Pedido 7, Fecha de pago 1 de febrero de 2023, Modo de pago: Pago en tienda
(8, '2023-02-05', 120.00, 8), -- Pedido 8, Fecha de pago 5 de febrero de 2023, Modo de pago: Financiación
(9, '2023-02-10', 300.00, 9), -- Pedido 9, Fecha de pago 10 de febrero de 2023, Modo de pago: Regalo
(10, '2022-12-01', 150.00, 10), -- Pedido 10, Fecha de pago 1 de diciembre de 2022, Modo de pago: SinpeMovil
(11, '2021-02-01', 120.00, 1), -- Pedido 11, Fecha de pago 1 de febrero de 2021, Modo de pago: Tarjeta de crédito
(12, '2021-02-01', 300.00, 2), -- Pedido 12, Fecha de pago 1 de febrero de 2021, Modo de pago: Tarjeta de débito
(13, '2023-03-01', 150.00, 3), -- Pedido 13, Fecha de pago 1 de marzo de 2023, Modo de pago: PayPal
(14, '2021-03-08', 120.00, 4), -- Pedido 14, Fecha de pago 8 de marzo de 2021, Modo de pago: Transferencia bancaria
(15, '2023-03-10', 300.00, 5), -- Pedido 15, Fecha de pago 10 de marzo de 2023, Modo de pago: Efectivo
(16, '2023-03-01', 150.00, 6), -- Pedido 16, Fecha de pago 1 de marzo de 2023, Modo de pago: Cheque
(17, '2023-12-01', 120.00, 7), -- Pedido 17, Fecha de pago 1 de diciembre de 2023, Modo de pago: Pago en tienda
(18, '2023-12-01', 300.00, 8), -- Pedido 18, Fecha de pago 1 de diciembre de 2023, Modo de pago: Financiación
(19, '2023-04-01', 150.00, 9), -- Pedido 19, Fecha de pago 1 de abril de 2023, Modo de pago: Regalo
(20, '2023-04-05', 120.00, 10), -- Pedido 20, Fecha de pago 5 de abril de 2023, Modo de pago: SinpeMovil
(21, '2021-03-09', 300.00, 1), -- Pedido 21, Fecha de pago 9 de marzo de 2021, Modo de pago: Tarjeta de crédito
(22, '2023-03-09', 150.00, 2), -- Pedido 22, Fecha de pago 9 de marzo de 2023, Modo de pago: Tarjeta de débito
(23, '2021-04-09', 120.00, 3), -- Pedido 23, Fecha de pago 9 de abril de 2021, Modo de pago: PayPal
(24, '2023-04-09', 300.00, 4), -- Pedido 24, Fecha de pago 9 de abril de 2023, Modo de pago: Transferencia bancaria
(25, '2023-05-01', 150.00, 5), -- Pedido 25, Fecha de pago 1 de mayo de 2023, Modo de pago: Efectivo
(26, '2022-05-08', 120.00, 6), -- Pedido 26, Fecha de pago 8 de mayo de 2022, Modo de pago: Cheque
(27, '2022-12-10', 300.00, 7), -- Pedido 27, Fecha de pago 10 de diciembre de 2022, Modo de pago: Pago en tienda
(28, '2023-05-09', 150.00, 8), -- Pedido 28, Fecha de pago 9 de mayo de 2023, Modo de pago: Financiación
(29, '2023-05-09', 120.00, 9), -- Pedido 29, Fecha de pago 9 de mayo de 2023, Modo de pago: Regalo
(30, '2023-05-09', 300.00, 10), -- Pedido 30, Fecha de pago 9 de mayo de 2023, Modo de pago: SinpeMovil
(31, '2023-06-01', 150.00, 1), -- Pedido 31, Fecha de pago 1 de junio de 2023, Modo de pago: Tarjeta de crédito
(32, '2023-12-05', 120.00, 2), -- Pedido 32, Fecha de pago 5 de diciembre de 2023, Modo de pago: Tarjeta de débito
(33, '2021-06-10', 300.00, 3), -- Pedido 33, Fecha de pago 10 de junio de 2021, Modo de pago: PayPal
(34, '2023-06-09', 150.00, 4), -- Pedido 34, Fecha de pago 9 de junio de 2023, Modo de pago: Transferencia bancaria
(35, '2021-03-03', 120.00, 5), -- Pedido 35, Fecha de pago 3 de marzo de 2021, Modo de pago: Efectivo
(36, '2023-06-03', 300.00, 6), -- Pedido 36, Fecha de pago 3 de junio de 2023, Modo de pago: Cheque
(37, '2023-03-01', 150.00, 7), -- Pedido 37, Fecha de pago 1 de marzo de 2023, Modo de pago: Pago en tienda
(38, '2023-07-08', 120.00, 8), -- Pedido 38, Fecha de pago 8 de julio de 2023, Modo de pago: Financiación
(39, '2023-07-10', 300.00, 9), -- Pedido 39, Fecha de pago 10 de julio de 2023, Modo de pago: Regalo
(40, '2022-07-03', 150.00, 10), -- Pedido 40, Fecha de pago 3 de julio de 2022, Modo de pago: SinpeMovil
(41, '2022-07-03', 120.00, 1), -- Pedido 41, Fecha de pago 3 de julio de 2022, Modo de pago: Tarjeta de crédito
(42, '2023-07-03', 300.00, 2), -- Pedido 42, Fecha de pago 3 de julio de 2023, Modo de pago: Tarjeta de débito
(43, '2023-08-03', 150.00, 3), -- Pedido 43, Fecha de pago 3 de agosto de 2023, Modo de pago: PayPal
(44, '2023-12-05', 120.00, 4), -- Pedido 44, Fecha de pago 5 de diciembre de 2023, Modo de pago: Transferencia bancaria
(45, '2023-08-10', 300.00, 5), -- Pedido 45, Fecha de pago 10 de agosto de 2023, Modo de pago: Efectivo
(46, '2023-08-03', 150.00, 6), -- Pedido 46, Fecha de pago 3 de agosto de 2023, Modo de pago: Cheque
(47, '2023-08-03', 120.00, 7), -- Pedido 47, Fecha de pago 3 de agosto de 2023, Modo de pago: Pago en tienda
(48, '2023-03-03', 300.00, 8), -- Pedido 48, Fecha de pago 3 de marzo de 2023, Modo de pago: Financiación
(49, '2021-09-08', 150.00, 9), -- Pedido 49, Fecha de pago 8 de septiembre de 2021, Modo de pago: Regalo
(50, '2021-03-05', 120.00, 10), -- Pedido 50, Fecha de pago 5 de marzo de 2021, Modo de pago: SinpeMovil
(51, '2023-09-10', 300.00, 1), -- Pedido 51, Fecha de pago 10 de septiembre de 2023, Modo de pago: Tarjeta de crédito
(52, '2023-09-03', 150.00, 2), -- Pedido 52, Fecha de pago 3 de septiembre de 2023, Modo de pago: Tarjeta de débito
(53, '2022-09-03', 120.00, 3), -- Pedido 53, Fecha de pago 3 de septiembre de 2022, Modo de pago: PayPal
(54, '2023-09-03', 300.00, 4), -- Pedido 54, Fecha de pago 3 de septiembre de 2023, Modo de pago: Transferencia bancaria
(55, '2022-10-01', 150.00, 5), -- Pedido 55, Fecha de pago 1 de octubre de 2022, Modo de pago: Efectivo
(56, '2023-03-05', 120.00, 6), -- Pedido 56, Fecha de pago 5 de marzo de 2023, Modo de pago: Cheque
(57, '2023-10-10', 300.00, 7), -- Pedido 57, Fecha de pago 10 de octubre de 2023, Modo de pago: Pago en tienda
(58, '2023-03-01', 150.00, 8), -- Pedido 58, Fecha de pago 1 de marzo de 2023, Modo de pago: Financiación
(59, '2023-12-02', 120.00, 9), -- Pedido 59, Fecha de pago 2 de diciembre de 2023, Modo de pago: Regalo
(60, '2023-10-02', 300.00, 10), -- Pedido 60, Fecha de pago 2 de octubre de 2023, Modo de pago: SinpeMovil
(61, '2021-11-08', 150.00, 1), -- Pedido 61, Fecha de pago 8 de noviembre de 2021, Modo de pago: Tarjeta de crédito
(62, '2023-11-05', 120.00, 2), -- Pedido 62, Fecha de pago 5 de noviembre de 2023, Modo de pago: Tarjeta de débito
(63, '2021-11-10', 300.00, 3), -- Pedido 63, Fecha de pago 10 de noviembre de 2021, Modo de pago: PayPal
(64, '2023-11-02', 150.00, 4), -- Pedido 64, Fecha de pago 2 de noviembre de 2023, Modo de pago: Transferencia bancaria
(65, '2023-11-02', 120.00, 5), -- Pedido 65, Fecha de pago 2 de noviembre de 2023, Modo de pago: Efectivo
(66, '2023-11-02', 300.00, 6), -- Pedido 66, Fecha de pago 2 de noviembre de 2023, Modo de pago: Cheque
(67, '2022-12-01', 150.00, 7), -- Pedido 67, Fecha de pago 1 de diciembre de 2022, Modo de pago: Pago en tienda
(68, '2023-03-02', 120.00, 8), -- Pedido 68, Fecha de pago 2 de marzo de 2023, Modo de pago: Financiación
(69, '2023-12-08', 300.00, 9), -- Pedido 69, Fecha de pago 8 de diciembre de 2023, Modo de pago: Regalo
(70, '2023-03-08', 150.00, 10), -- Pedido 70, Fecha de pago 8 de marzo de 2023, Modo de pago: SinpeMovil
(71, '2023-12-05', 120.00, 1), -- Pedido 71, Fecha de pago 5 de diciembre de 2023, Modo de pago: Tarjeta de crédito
(72, '2021-12-05', 300.00, 2), -- Pedido 72, Fecha de pago 5 de diciembre de 2021, Modo de pago: Tarjeta de débito
(73, '2024-12-01', 150.00, 3), -- Pedido 73, Fecha de pago 1 de diciembre de 2024, Modo de pago: PayPal
(74, '2021-01-05', 120.00, 4), -- Pedido 74, Fecha de pago 5 de enero de 2021, Modo de pago: Transferencia bancaria
(75, '2024-12-10', 300.00, 5), -- Pedido 75, Fecha de pago 10 de diciembre de 2024, Modo de pago: Efectivo
(76, '2024-01-05', 150.00, 6), -- Pedido 76, Fecha de pago 5 de enero de 2024, Modo de pago: Cheque
(77, '2024-01-05', 120.00, 7), -- Pedido 77, Fecha de pago 5 de enero de 2024, Modo de pago: Pago en tienda
(78, '2024-01-08', 300.00, 8), -- Pedido 78, Fecha de pago 8 de enero de 2024, Modo de pago: Financiación
(79, '2021-02-01', 150.00, 9), -- Pedido 79, Fecha de pago 1 de febrero de 2021, Modo de pago: Regalo
(80, '2024-03-05', 120.00, 10), -- Pedido 80, Fecha de pago 5 de marzo de 2024, Modo de pago: SinpeMovil
(81, '2021-02-10', 300.00, 1), -- Pedido 81, Fecha de pago 10 de febrero de 2021, Modo de pago: Tarjeta de crédito
(82, '2024-03-08', 150.00, 2), -- Pedido 82, Fecha de pago 8 de marzo de 2024, Modo de pago: Tarjeta de débito
(83, '2024-02-08', 120.00, 3), -- Pedido 83, Fecha de pago 8 de febrero de 2024, Modo de pago: PayPal
(84, '2024-02-08', 300.00, 4), -- Pedido 84, Fecha de pago 8 de febrero de 2024, Modo de pago: Transferencia bancaria
(85, '2024-03-01', 150.00, 5), -- Pedido 85, Fecha de pago 1 de marzo de 2024, Modo de pago: Efectivo
(86, '2024-03-08', 120.00, 6), -- Pedido 86, Fecha de pago 8 de marzo de 2024, Modo de pago: Cheque
(87, '2021-03-08', 300.00, 7), -- Pedido 87, Fecha de pago 8 de marzo de 2021, Modo de pago: Pago en tienda
(88, '2024-03-08', 150.00, 8), -- Pedido 88, Fecha de pago 8 de marzo de 2024, Modo de pago: Financiación
(89, '2021-03-08', 120.00, 9), -- Pedido 89, Fecha de pago 8 de marzo de 2021, Modo de pago: Regalo
(90, '2024-03-10', 300.00, 10), -- Pedido 90, Fecha de pago 10 de marzo de 2024, Modo de pago: SinpeMovil
(91, '2024-04-01', 150.00, 1), -- Pedido 91, Fecha de pago 12 de marzo de 2024, Modo de pago: Tarjeta de crédito
(92, '2024-04-05', 120.00, 2), -- Pedido 92, Fecha de pago 12 de marzo de 2024, Modo de pago: Tarjeta de débito
(93, '2024-03-10', 300.00, 3), -- Pedido 93, Fecha de pago 15 de marzo de 2024, Modo de pago: PayPal
(94, '2024-04-10', 150.00, 4), -- Pedido 94, Fecha de pago 15 de marzo de 2024, Modo de pago: Transferencia bancaria
(95, '2024-12-10', 120.00, 5), -- Pedido 95, Fecha de pago 15 de marzo de 2024, Modo de pago: Efectivo
(96, '2024-04-10', 300.00, 6), -- Pedido 96, Fecha de pago 15 de marzo de 2024, Modo de pago: Cheque
(97, '2024-05-10', 150.00, 7), -- Pedido 97, Fecha de pago 15 de marzo de 2024, Modo de pago: Pago en tienda
(98, '2021-12-05', 120.00, 8), -- Pedido 98, Fecha de pago 15 de marzo de 2024, Modo de pago: Financiación
(99, '2024-05-08', 300.00, 9), -- Pedido 99, Fecha de pago 15 de marzo de 2024, Modo de pago: Regalo
(100, '2021-05-10', 150.00, 10); -- Pedido 100, Fecha de pago 15 de marzo de 2024, Modo de pago: SinpeMovil





------------------Crear un usuario administrado------------------------------------


-- 1. Crear un inicio de sesión en el servidor
CREATE LOGIN admin_user WITH PASSWORD = 'Admin2024';

-- 2. Crear un usuario para la base de datos
USE FinalDBProject;
CREATE USER admin_user FOR LOGIN admin_user;

-- 3. Otorgar permisos de sysadmin al inicio de sesión
ALTER SERVER ROLE sysadmin ADD MEMBER admin_user;


-----------------usuario de respaldo----------------------------------------

-- 1. Crear un inicio de sesión en el servidor
CREATE LOGIN backup_user WITH PASSWORD = 'Backend2024';

-- 2. Crear un usuario para la base de datos
USE FinalDBProject;
CREATE USER backup_user FOR LOGIN backup_user;

-- 3. Otorgar permisos de BACKUP DATABASE y BACKUP LOG al usuario en la base de datos
GRANT BACKUP DATABASE TO backup_user;
GRANT BACKUP LOG TO backup_user;

----------------usuario normal con acceso limitado a tablas y funciones ------------------------

-- 1. Crear un inicio de sesión en el servidor
CREATE LOGIN UserLocal WITH PASSWORD = 'User001';
CREATE LOGIN UserLocal02 WITH PASSWORD = 'User002';

-- 2. Crear un usuario para la base de datos (por ejemplo, en la base de datos 'mi_base_de_datos')
USE FinalDBProject;
CREATE USER UserLocal FOR LOGIN UserLocal;

USE FinalDBProject;
CREATE USER UserLocal02 FOR LOGIN UserLocal02;

-- 3. Otorgar permisos limitados a tablas específicas
-- Por ejemplo, darle permisos SELECT y INSERT en las tablas 'customers' y 'orders'

GRANT SELECT, INSERT ON customers TO UserLocal;
GRANT SELECT ON orders TO UserLocal;

GRANT SELECT ON customers TO UserLocal02;

--Funcion 01
CREATE FUNCTION get_full_name(@customer_id INT)
RETURNS VARCHAR(100)
AS
BEGIN
DECLARE @full_name VARCHAR(100);

SELECT @full_name = first_name + ' ' + last_name
FROM customers
WHERE customer_id = @customer_id;

RETURN @full_name;

END;

--Funcion 02

CREATE FUNCTION get_customer_orders(@customer_id INT)
RETURNS TABLE
AS
RETURN
(
SELECT o.order_id, o.order_date, o.total
FROM orders o
WHERE o.customer_id = @customer_id
);

-- Otorgar acceso a una función específica
-- Por ejemplo, dar permisos para ejecutar la función 'get_full_name'

GRANT EXECUTE ON get_full_name TO UserLocal;

-- Otorgar acceso a una función específica
-- Por ejemplo, dar permisos para ejecutar la función 'get_customer_orders'

GRANT SELECT ON get_customer_orders TO UserLocal02;


----------------------Construir al menos 5 índices no clúster---------------------------

-- Índice 1: Índice no clúster en 'email' de 'customers' con inclusión de 'first_name' y 'last_name'
CREATE NONCLUSTERED INDEX inc_customers_email_include_name
ON customers(email)
INCLUDE (first_name, last_name);

-- Índice 2: Índice compuesto no clúster en 'city' y 'postal_code' de 'addresses' con inclusión de 'country'
CREATE NONCLUSTERED INDEX inc_addresses_city_postalcode
ON addresses(city, postal_code)
INCLUDE (country);

-- Índice 3: Índice no clúster filtrado en 'category_name' de 'categories' solo para categorías activas
CREATE NONCLUSTERED INDEX inc_categories_active
ON categories(category_name)
WHERE category_name IS NOT NULL;

-- Índice 4: Índice compuesto no clúster en 'order_date' y 'customer_id' de 'orders' con inclusión de 'total'
CREATE NONCLUSTERED INDEX inc_orders_order_date_customer
ON orders(order_date, customer_id)
INCLUDE (total);

-- Índice 5: Índice compuesto no clúster en 'product_id' y 'quantity' de 'order_details' con inclusión de 'price'
CREATE NONCLUSTERED INDEX inc_order_details_product_quantity
ON order_details(product_id, quantity)
INCLUDE (price);

-------Desarrollar TRIGGERS en todas las tablas para verificar la validez de los valores ingresados------------------

-- Verificar que el email tenga un formato válido

CREATE TRIGGER trigger_customers_validate
ON customers
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE email NOT LIKE '%_@__%.__%')
    BEGIN
        RAISERROR ('Email no válido.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END


-- Verificar que first_name o last_name no estén vacíos

CREATE TRIGGER trigger_customers_validate_first_last_name
ON customers
FOR INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT * FROM inserted WHERE first_name = '' OR last_name = '')
    BEGIN
        RAISERROR ('El nombre o apellido no pueden estar vacíos.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END

-- Verificar que el código postal no esté vacío


CREATE TRIGGER trigger_addresses_validate2
ON addresses
FOR INSERT, UPDATE
AS
BEGIN
    -- Verificar que el código postal no esté vacío
    IF EXISTS (SELECT * FROM inserted WHERE postal_code = '')
    BEGIN
        RAISERROR ('El código postal no puede estar vacío.', 16, 1);
        ROLLBACK TRANSACTION;
    END

    -- Verificar que el país sea válido (por ejemplo, que no esté vacío)
    IF EXISTS (SELECT * FROM inserted WHERE country = '')
    BEGIN
        RAISERROR ('El país no puede estar vacío.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END



CREATE TRIGGER trigger_categories_validate
ON categories
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que el nombre de la categoría no esté vacío
IF EXISTS (SELECT * FROM inserted WHERE category_name = '')
BEGIN
RAISERROR ('El nombre de la categoría no puede estar vacío.', 16, 1);
ROLLBACK TRANSACTION;
END
END;

CREATE TRIGGER trigger_products_validate
ON products
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que el precio sea mayor que 0
IF EXISTS (SELECT * FROM inserted WHERE price <= 0)
BEGIN
RAISERROR ('El precio debe ser mayor que 0.', 16, 1);
ROLLBACK TRANSACTION;
END

-- Verificar que la cantidad en stock sea un valor positivo
IF EXISTS (SELECT * FROM inserted WHERE stock_quantity < 0)
BEGIN
RAISERROR ('La cantidad en stock no puede ser negativa.', 16, 1);
ROLLBACK TRANSACTION;
END

END;

CREATE TRIGGER trigger_orders_validate
ON orders
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que el total del pedido sea mayor que 0
IF EXISTS (SELECT * FROM inserted WHERE total <= 0)
BEGIN
RAISERROR ('El total del pedido debe ser mayor que 0.', 16, 1);
ROLLBACK TRANSACTION;
END
END;

‌

CREATE TRIGGER trigger_order_details_validate
ON order_details
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que la cantidad sea mayor que 0
IF EXISTS (SELECT * FROM inserted WHERE quantity <= 0)
BEGIN
RAISERROR ('La cantidad debe ser mayor que 0.', 16, 1);
ROLLBACK TRANSACTION;
END

-- Verificar que el precio sea mayor que 0

IF EXISTS (SELECT * FROM inserted WHERE price <= 0)

BEGIN

RAISERROR ('El precio debe ser mayor que 0.', 16, 1);

ROLLBACK TRANSACTION;

END

END;

‌

CREATE TRIGGER trigger_payments_validate
ON payments
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que el monto del pago sea mayor que 0
IF EXISTS (SELECT * FROM inserted WHERE amount <= 0)
BEGIN
RAISERROR ('El monto del pago debe ser mayor que 0.', 16, 1);
ROLLBACK TRANSACTION;
END
END;

‌

‌

CREATE TRIGGER trg_payment_methods_validate
ON payment_methods
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que el nombre del método de pago no esté vacío
IF EXISTS (SELECT * FROM inserted WHERE method_name = '')
BEGIN
RAISERROR ('El nombre del método de pago no puede estar vacío.', 16, 1);
ROLLBACK TRANSACTION;
END
END;

‌

CREATE TRIGGER trg_shipping_methods_validate
ON shipping_methods
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que el nombre del método de envío no esté vacío
IF EXISTS (SELECT * FROM inserted WHERE method_name = '')
BEGIN
RAISERROR ('El nombre del método de envío no puede estar vacío.', 16, 1);
ROLLBACK TRANSACTION;
END

-- Verificar que el costo de envío sea mayor que 0

IF EXISTS (SELECT * FROM inserted WHERE shipping_cost <= 0)

BEGIN

RAISERROR ('El costo de envío debe ser mayor que 0.', 16, 1);

ROLLBACK TRANSACTION;

END

END;

‌

‌

CREATE TRIGGER trg_order_shipping_validate
ON order_shipping
FOR INSERT, UPDATE
AS
BEGIN
-- Verificar que la fecha de envío no sea nula
IF EXISTS (SELECT * FROM inserted WHERE shipped_date IS NULL)
BEGIN
RAISERROR ('La fecha de envío no puede ser nula.', 16, 1);
ROLLBACK TRANSACTION;
END
END;

-- Procedimientos guardados

CREATE PROC GetTop5Categories
AS
BEGIN
    -- Selecciona las 5 primeras categorías ordenadas alfabéticamente
    SELECT TOP 5 category_id, category_name
    FROM categories
    ORDER BY category_name ASC;
END;
GO

EXEC GetTop5Categories;

-- 1. Procedimiento para Obtener el Monto Total de Crédito Solicitado por Cada Cliente y el Número de Aplicaciones Previas

CREATE PROC GetCreditAmountPerClient
AS
BEGIN
    -- Obtiene el monto total de crédito solicitado por cada cliente y el número de aplicaciones previas
    SELECT
        a.SK_ID_CURR,
        COUNT(p.SK_ID_PREV) AS Num_Previous_Applications,
        SUM(CAST(a.AMT_CREDIT AS DECIMAL(18, 2))) AS Total_Credit_Amount
    FROM 
        application_test a
    LEFT JOIN 
        previous_application p ON a.SK_ID_CURR = p.SK_ID_CURR
    GROUP BY 
        a.SK_ID_CURR;
END;
GO

CREATE PROC GetCreditAmountPerClient5_
AS
BEGIN
    -- Obtiene el monto total de crédito solicitado por cada cliente y el número de aplicaciones previas
    SELECT TOP 5
        a.SK_ID_CURR,
        COUNT(p.SK_ID_PREV) AS Num_Previous_Applications,
        SUM(CAST(a.AMT_CREDIT AS DECIMAL(18, 2))) AS Total_Credit_Amount
    FROM 
        application_test a
    LEFT JOIN 
        previous_application p ON a.SK_ID_CURR = p.SK_ID_CURR
    GROUP BY 
        a.SK_ID_CURR;
END;
GO


EXEC GetCreditAmountPerClient;
EXEC GetCreditAmountPerClient5_;

/*SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    CHARACTER_MAXIMUM_LENGTH
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'application_test';*/


--2. Procedimiento para Análisis de la Proporción de Crédito Vencido por Tipo de Crédito

CREATE PROC GetCreditOverdueByType
AS
BEGIN
    -- Análisis de la proporción de crédito vencido por tipo de crédito en la tabla bureau
    SELECT 
        b.CREDIT_TYPE,
        COUNT(b.SK_ID_BUREAU) AS Num_Credits,
        SUM(CAST(b.AMT_CREDIT_SUM_OVERDUE AS DECIMAL(18, 2))) AS Total_Overdue_Amount
    FROM 
        bureau b
    GROUP BY 
        b.CREDIT_TYPE
    ORDER BY 
        Total_Overdue_Amount DESC;
END;
GO
EXEC GetCreditOverdueByType;

--3. Procedimiento para Identificar el Número de Clientes con Aplicaciones Previas por Tipo de Contrato

CREATE PROC GetCustomerCountByContractType
AS
BEGIN
    -- Identifica el número de clientes que tienen aplicaciones previas y sus tipos de contrato
    SELECT 
        p.NAME_CONTRACT_TYPE,
        COUNT(DISTINCT p.SK_ID_CURR) AS Num_Customers
    FROM 
        previous_application p
    GROUP BY 
        p.NAME_CONTRACT_TYPE
    ORDER BY 
        Num_Customers DESC;
END;
GO
EXEC GetCustomerCountByContractType;

-- 4. Procedimiento para Relacionar el Ingreso Total de los Clientes y el Monto de Crédito Solicitado

CREATE PROC GetIncomeVsCreditAmount
AS
BEGIN
    -- Relación entre el ingreso total de los clientes y el monto de crédito solicitado
    SELECT 
        a.AMT_INCOME_TOTAL,
        AVG(CAST(a.AMT_CREDIT AS DECIMAL(18, 2))) AS Avg_Credit_Amount
    FROM 
        application_test a
    GROUP BY 
        a.AMT_INCOME_TOTAL
    ORDER BY 
        a.AMT_INCOME_TOTAL DESC;
END;
GO
EXEC GetIncomeVsCreditAmount;

-------------------------------------------------------Consultar tipo de dato
/*SELECT 
    COLUMN_NAME, 
    DATA_TYPE 
FROM 
    INFORMATION_SCHEMA.COLUMNS 
WHERE 
    TABLE_NAME = 'application_test' 
    AND COLUMN_NAME IN ('AMT_INCOME_TOTAL', 'AMT_CREDIT');*/


-- 5. Procedimiento para el Análisis Combinado de las Tablas application_test, previous_application, y bureau

CREATE PROC GetComprehensiveCreditReport
AS
BEGIN
    -- Análisis combinado de las tablas application_test, previous_application y bureau
    SELECT 
        at.NAME_CONTRACT_TYPE,
        b.CREDIT_ACTIVE,
        COUNT(DISTINCT p.SK_ID_PREV) AS Num_Previous_Applications,
        COALESCE(SUM(TRY_CAST(at.AMT_CREDIT AS DECIMAL(18, 2))), 0) AS Total_Credit_Requested,
        COALESCE(SUM(TRY_CAST(b.AMT_CREDIT_SUM AS DECIMAL(18, 2))), 0) AS Total_Credit_Sum,
        COALESCE(SUM(TRY_CAST(b.AMT_CREDIT_SUM_DEBT AS DECIMAL(18, 2))), 0) AS Total_Debt_Amount
    FROM 
        application_test at
    LEFT JOIN 
        previous_application p ON at.SK_ID_CURR = p.SK_ID_CURR
    LEFT JOIN 
        bureau b ON at.SK_ID_CURR = b.SK_ID_CURR
    GROUP BY 
        at.NAME_CONTRACT_TYPE,
        b.CREDIT_ACTIVE
    ORDER BY 
        Total_Credit_Requested DESC, 
        Total_Debt_Amount DESC;
END;
GO
EXEC GetComprehensiveCreditReport;