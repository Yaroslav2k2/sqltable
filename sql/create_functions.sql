DELIMITER $$

CREATE FUNCTION hello() RETURNS VARCHAR(20)
BEGIN
    DECLARE greeting VARCHAR(20);
    DECLARE current_hour INT;

    SET current_hour = HOUR(CURTIME());

    IF current_hour >= 6 AND current_hour < 12 THEN
        SET greeting = 'Доброе утро';
    ELSEIF current_hour >= 12 AND current_hour < 18 THEN
        SET greeting = 'Добрый день';
    ELSEIF current_hour >= 18 AND current_hour < 24 THEN
        SET greeting = 'Добрый вечер';
    ELSE
        SET greeting = 'Доброй ночи';
    END IF;

    RETURN greeting;
END $$

DELIMITER ;
