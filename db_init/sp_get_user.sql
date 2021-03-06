USE local_db;

DELIMITER $$

CREATE PROCEDURE get_user(
    IN p_un VARCHAR(255),
    OUT p_pw VARCHAR(255)
)

BEGIN
    SELECT pw_hash INTO p_pw FROM users WHERE un = p_un;
END$$

DELIMITER ;