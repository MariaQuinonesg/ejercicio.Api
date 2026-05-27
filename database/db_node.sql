DROP DATABASE IF EXISTS db_node; --a.1. elimina la base de datos si ya existe.

CREATE SCHEMA db_node DEFAULT CHARACTER SET utf8; --b. crea la base de datos con el caracter utf8 el cual sirve para identificar los caracteres especiales.
USE db_node; --c. Se usa la base de datos.

CREATE TABLE users( --d. se crea la tabla "users".

    id INT AUTO_INCREMENT PRIMARY KEY, --e. se crea el campo "id" con identificacion de manera unica (PRYMARY KEY), con el tipo de dato entero, siendo este auto incrementable.
    name VARCHAR(100) NOT NULL, --f. campo donde se guarda el nombre(name) con su tipo de dato de texto, este cuenta con 100 caracteres, es un campo obligatorio.
    lastname VARCHAR(100) NOT NULL, --g.campo donde se guarda el Apellido(lastname) con su tipo de dato de texto, este cuenta con 100 caracteres, es un campo obligatorio.
    email VARCHAR(150) NOT NULL UNIQUE, --h. campo donde guarda el email con su tipo de dato de texto, este cuenta con 150 caracteres, es un campo unique osea que sus valores de la columna tienen que ser distintos entre si.
    password VARCHAR(255) NOT NULL, --i.campo donde se guarda la contraseña(password), cuenta con un tipo de dato en texto con 255 caracteres, siendo este un campo obligatorio (NOT NULL).
    phone VARCHAR(20), --j.campo donde se guarda el telefono(phone) que cuenta con un tipo de dato varchar (esto porque aunque sea numerico no se puede hacer ninguna operacion matematica), que cuenta con 20 caracteres.
    image VARCHAR(20),--k. campo donde se almacena una imagen, en su formato jpg por esto el tipo de dato es varchar con 20 caracteres.
    role VARCHAR(20),--l. campo donde se almacena el rol de cada usuario en la bd. 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, --m. este campo queda registrada la hora y fecha en que se inserta una nueva fila.
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP --n. registra la fecha y hora de la ultima modificacion de la fila, actualizandose tambien el dato.
) ENGINE=InnoDB; --ñ. motor de base de datos.

INSERT INTO users VALUES ( --a.2. Se inserta datos en la tabla "users"
    --b.campo sin valor (null- al ser el id, es un dato que se ingresa automaticamente).
    "Maria",--c. dato insertado del campo name.
    --d. dato insertado del campo lastname.
    "alejuchaxd@gmail.com",--e. dato insertado del campo email.
    "$2b$10$NR8eRuuAB12JoHe81ZYnG.i2/5k/D5TKrxc7Pk74W4rgzADdABM9G",--f. dato insertado del campo password.
    "3162817388",--g. dato insertado del campo phone.
    "img_perfil", --h. dato insertado del campo image.
    "admin",--i. dato insertado del campo role.
    null, --j. dato que se genera automaticamente.
    null --k. dato que se genera automaticamente.
);

-- pregunta 1: ¿Qué hace el archivo?  
-- Respuesta: Contiene la base de datos del modulo al cual se le realizara la api

--pregunta 2: ¿Qué función cumple el archivo en el proyecto 
--Respuesta: Scrip SQL para crear y almacenar la base de datos del proyecto.

--holi, esto es practica xd 
                                            