-- Триггер для таблицы users
CREATE TRIGGER log_user_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO logs (table_name, record_id) VALUES ('users', NEW.id);
END;

-- Триггер для таблицы communities
CREATE TRIGGER log_community_insert AFTER INSERT ON communities
FOR EACH ROW
BEGIN
    INSERT INTO logs (table_name, record_id) VALUES ('communities', NEW.id);
END;

-- Триггер для таблицы messages
CREATE TRIGGER log_message_insert AFTER INSERT ON messages
FOR EACH ROW
BEGIN
    INSERT INTO logs (table_name, record_id) VALUES ('messages', NEW.id);
END;
