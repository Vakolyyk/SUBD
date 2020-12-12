CREATE TABLE Клієнти(
Код_клієнта INTEGER NOT NULL,
Прізвище CHAR(20) NOT NULL,
[Ім'я] CHAR(20) NOT NULL,
По_батькові CHAR(20) NOT NULL, 
Номер_телефону INT NOT NULL,
PRIMARY KEY (Код_клієнта)
);

CREATE TABLE Працівники(
Код_працівника INTEGER NOT NULL,
Прізвище CHAR(20) NOT NULL,
[Ім'я] CHAR(20) NOT NULL,
По_батькові CHAR(20) NOT NULL, 
Номер_телефону INT NOT NULL,
Місто CHAR(20) NOT NULL,
Вулиця CHAR(20) NOT NULL,
Номер_будинку INT NOT NULL,
Посада CHAR(20) NOT NULL,
PRIMARY KEY (Код_працівника)
);

CREATE TABLE Рецепт(
Код_рецепту INTEGER NOT NULL,
Вид_тіста CHAR(20) NOT NULL,
Маса_тіста INT NOT NULL,
Начинка CHAR(20) NOT NULL,
Маса_начинки INT NOT NULL, 
Тривалість_приготування INT NOT NULL,
PRIMARY KEY (Код_рецепту)
);

CREATE TABLE Продукція(
Код_продукції INTEGER NOT NULL,
Тип_продукції CHAR(20) NOT NULL,
Назва_продукції CHAR(20) NOT NULL,
Термін_зберігання INT NOT NULL, 
Начинка BOOLEAN NOT NULL,
Ціна_оптова MONEY NOT NULL,
Ціна_роздрібна MONEY NOT NULL,
Маса INT NOT NULL,
Код_рецепту INT NOT NULL,
PRIMARY KEY (Код_продукції)
CONSTRAINT ФКрецепт
FOREIGN KEY (Код_рецепту) 
REFERENCES   Рецепт
ON DELETE CASCADE 
ON UPDATE CASCADE);

CREATE TABLE Пекарня(
Код_пекарні INTEGER NOT NULL,
Назва_пекарні CHAR(20)NOT NULL,
Місто CHAR(20) NOT NULL,
Вулиця CHAR(20) NOT NULL,
Номер_будинку INT NOT NULL,
Номер_телефону INT NOT NULL,
E-mail CHAR(30)NOT NULL,
PRIMARY KEY (Код_пекарні)
);

CREATE TABLE Продажі(
Код_продажу INTEGER NOT NULL,
Код_пекарні INT NOT NULL,
Код_клієнта INT NOT NULL,
Код_продавця INT NOT NULL,
Код_продукції INT NOT NULL,
Дата_продажу DATE NOT NULL,
Кількість_купленої_продукції INT NOT NULL,
Загальна_вартість MONEY NOT NULL,
PRIMARY KEY (Код_продажу)
CONSTRAINT ФКклієнт 
FOREIGN KEY (Код_клієнта) 
REFERENCES   Клієнти
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФКпрацівник 
FOREIGN KEY (Код_працівника) 
REFERENCES   Працівники
ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ФКпродукція 
FOREIGN KEY (Код_продукції) 
REFERENCES   Продукція
ON DELETE CASCADE ON UPDATE CASCADE
CONSTRAINT ФКпекарня 
FOREIGN KEY (Код_пекарні) 
REFERENCES   Пекарня
ON DELETE CASCADE ON UPDATE CASCADE
);
