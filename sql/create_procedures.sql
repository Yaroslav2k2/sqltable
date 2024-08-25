DELIMITER $$

CREATE PROCEDURE MoveUserToOld(IN user_id INT)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ошибка при перемещении пользователя';
    END;

    START TRANSACTION;

    -- Перемещение пользователя в users_old
    INSERT INTO users_old SELECT * FROM users WHERE id = user_id;

    -- Удаление пользователя из users
    DELETE FROM users WHERE id = user_id;

    -- Подтверждение транзакции
    COMMIT;
END $$

DELIMITER ;
