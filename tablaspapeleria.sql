-- inicio de las tabas de la BD de papeleria.sql


-- tabla stock
CREATE TABLE IF NOT EXISTS stock(
numero_stock INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Precio DOUBLE(6,2) NOT NULL,
cantidasd_stock INT(3) NOT NULL,
descripcion varchar(100) NOT NULL
);

-- tabla clientes

CREATE TABLE IF NOT EXISTS clientes(
 cliente_id  INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 nombre varchar(25) NOT NULL,
apellido VARCHAR(50) NOT NULL,
DNI VARCHAR (9) NOT NULL,
direccion VARCHAR(50) NOT NULL,
cp VARCHAR(10) NOT NULL,
email VARCHAR(30) NOT NULL,
movil VARCHAR (9) NOT NULL

);

-- tabla fabricantes

CREATE TABLE IF NOT EXISTS Fabricantes(
    fabricante_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    paises varchar (20) NOT NULL,
    cantidad varchar(100) NOT NULL,
    producto varchar(100) NOT NULL
);

-- tabla transacciones
CREATE TABLE IF NOT EXISTS transacciones(
transacciones_id  INTEGER UNSIGNED AUTO_INCREMENT,
cliente_id varchar(50) not NULL,
fechacreacion timestamp default current_timestamp,
cantidasd_stock INT(3) NOT NULL,
descripcion varchar(100) NOT NULL,
precio DOUBLE(6,2) NOT NULL,
numero_stock varchar(20) not NULL,

primary key (transacciones_id),
FOREIGN KEY (transacciones_id) REFERENCES clientes(cliente_id)
);
