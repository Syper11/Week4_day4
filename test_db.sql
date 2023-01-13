CREATE PROCEDURE late_fee_Brett (
    p_id INTEGER,
    freeAmount NUMERIC (5,2)
    )
    LANGUAGE plpgsql
    AS
    $$
    BEGIN
    --add the code block here
    UPDATE payment
    SET amount = amount + freeAmount
    WHERE payment_id = p_id;
    --commit the above statement inside transaction
    COMMIT;
    --
    END
    $$
    ;
SELECT *
FROM payment
WHERE payment_id = 22687;

CALL late_fee_Brett(22687, 0.00);

SELECT * FROM actor ORDER BY actor_id DESC,



CREATE OR REPLACE FUNCTION add_actor_brett (
    a_id INTEGER,
    f_name VARCHAR(50),
    l_name VARCHAR(50)
)
    RETURNS void
    LANGUAGE plpgsql
    AS
    $MAIN$
    BEGIN
    -- Insert into actor table
    INSERT INTO actor(actor_id, first_name, last_name,last_update)
    VALUES(a_id,f_name,l_name, NOW()::TIMESTAMP);
    END
    $MAIN$
    ;

SELECT add_actor_brett(209, 'M', 'J')

