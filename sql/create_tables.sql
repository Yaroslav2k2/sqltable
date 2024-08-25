-- Создание таблицы users
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(120) UNIQUE
);

-- Создание аналогичной таблицы users_old
CREATE TABLE users_old AS
SELECT *
FROM users
WHERE 1=0;

-- Создание таблицы messages
CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    from_user_id INT,
    to_user_id INT,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Создание таблицы communities
CREATE TABLE communities (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Создание таблицы logs
CREATE TABLE logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(50),
    record_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=ARCHIVE;
