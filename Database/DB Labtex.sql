CREATE database labtex;

USE labtex;

CREATE TABLE prenda
(
idPrenda INT NOT NULL AUTO_INCREMENT,
referencia INT NULL,
talla ENUM('XS','S','M','L','XL') NULL,
color ENUM('Negro','Blanco','Amarillo','Rosa','Azul','Verde','Rojo') NULL,
descripcion NVARCHAR (500) NULL,
imagen VARCHAR (400) NULL,
CONSTRAINT PK_prenda PRIMARY KEY (idPrenda),
UNIQUE (referencia)
);

INSERT INTO prenda (idPrenda, referencia, talla, color, descripcion, imagen) VALUES ('1', '01019001', 'S', 'Amarillo', 'Camiseta manga corta', ' '), ('2','01019002','M','Blanco', 'Bomberg doble cremallera', ' ');

SELECT * FROM labtex.prenda;