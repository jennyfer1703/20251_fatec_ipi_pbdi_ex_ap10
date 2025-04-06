-- exercício 1.1 com estrutura FOR para números pares
DO
$$
DECLARE 
BEGIN
RAISE NOTICE 'Números Pares (1 - 100) - FOR';
    FOR i IN 1..100 LOOP  
          CONTINUE WHEN i % 2 = 1;
          RAISE NOTICE '%', i;
     END LOOP;
END;
$$

-- exercício 1.1 com estrutura WHILE para números pares
-- DO
-- $$
-- DECLARE 
--      contador INT := 0;
-- BEGIN
-- RAISE NOTICE 'Números Pares (1 - 100) - WHILE';
--     WHILE contador < 100 LOOP 
--           contador := contador + 1;
--           CONTINUE WHEN contador % 2 = 1;
--           RAISE NOTICE '%', contador;
--      END LOOP;
-- END;
-- $$

-- exercício 1.1 com estrutura LOOP para números pares
-- DO
-- $$
-- DECLARE 
--      contador INT := 1;
-- BEGIN
-- RAISE NOTICE 'Números Pares (1 - 100) - LOOP';
--     LOOP
--           contador := contador + 1;
--           EXIT WHEN contador > 100;
--           CONTINUE WHEN contador % 2 = 1;
--           RAISE NOTICE '%', contador;
--      END LOOP;
-- END;
-- $$

-- CREATE OR REPLACE FUNCTION valor_aleatorio_entre (lim_inferior INT, lim_superior
-- INT) RETURNS INT AS
-- $$
-- BEGIN
-- RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
-- END;
-- $$ LANGUAGE plpgsql;