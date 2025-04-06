-- exercício 1.1 com estrutura WHILE para números positivos(20 a 50)
DO
$$
DECLARE 
     contador INT := 0;
     numero INT;
     soma INT := 0;
BEGIN
RAISE NOTICE 'Números Positivos (20 a 50) - WHILE';
     WHILE contador < 6 LOOP
          numero := valor_aleatorio_entre(20, 50);
          contador := contador + 1;
          IF numero > 0 THEN
               soma := soma + 1;
          END IF;
          RAISE NOTICE '%', numero;
     END LOOP;
     RAISE NOTICE '% valor(es) positivo(s)', soma;
END;
$$


-- exercício 1.1 com estrutura LOOP para números positivos(20 a 50)
-- DO
-- $$
-- DECLARE 
--      contador INT := 1;
--      numero INT;
--      soma INT := 0;
-- BEGIN
-- RAISE NOTICE 'Números Positivos (20 a 50) - LOOP';
--      LOOP
--           numero := valor_aleatorio_entre(20, 50);
--           contador := contador + 1;
--           IF numero > 0 THEN
--                soma := soma + 1;
--           END IF;
--           RAISE NOTICE '%', numero;
--           EXIT WHEN contador > 6;
--      END LOOP;
--      RAISE NOTICE '% valor(es) positivo(s)', soma;
-- END;
-- $$


-- exercício 1.1 com estrutura FOREACH para números positivos
-- DO 
-- $$
-- DECLARE
--      numeros INT[] := ARRAY[
--      valor_aleatorio_entre(0,100) - 50,
--      valor_aleatorio_entre(0,100) - 50,
--      valor_aleatorio_entre(0,100) - 50,
--      valor_aleatorio_entre(0,100) - 50,
--      valor_aleatorio_entre(0,100) - 50,
--      valor_aleatorio_entre(0,100) - 50
--      ];
--      numero INT;
--      soma INT := 0;
-- BEGIN
-- RAISE NOTICE 'Números Positivos (-50 a 50 ) - FOREACH
-- obs: Seis valores, negativos e/ou positivos';
--      FOREACH numero IN ARRAY numeros LOOP    
--           IF numero > 0 THEN
--                soma := soma + 1;
--           END IF;
--           RAISE NOTICE '%',numero;
--      END LOOP;
--      RAISE NOTICE '%', soma;
-- END;
-- $$

-- exercício 1.1 com estrutura FOR para números positivos
-- DO
-- $$
-- DECLARE 
--      contador INT := 1;
--      numero INT;
--      soma INT := 0;
-- BEGIN
-- RAISE NOTICE 'Números Positivos (-50 a 50 ) - FOR
-- obs: Seis valores, negativos e/ou positivos.';
--      FOR i IN 1..20 LOOP
--           numero := valor_aleatorio_entre(0,100) -50;
--           contador := contador + 1;
--           CASE 
--                WHEN  numero = 0 THEN
--                     contador := contador - 1;
               
--                WHEN numero > 0 THEN
--                soma := soma + 1;
--                ELSE 
--                soma := soma;
--           END CASE;
--           RAISE NOTICE '%',numero;
--           EXIT WHEN contador > 6;
--      END LOOP;
--      RAISE NOTICE '% valor(es) positivo(s)', soma;
-- END;
-- $$

-- exercício 1.1 com estrutura WHILE para números positivos
-- DO
-- $$
-- DECLARE 
--      contador INT := 0;
--      numero INT;
--      soma INT := 0;
-- BEGIN
-- RAISE NOTICE 'Números Positivos (-50 a 50 ) - WHILE
-- obs: Seis valores, negativos e/ou positivos.';
--      WHILE contador < 6 LOOP
--           numero := valor_aleatorio_entre(0,100) -50;
--           contador := contador + 1;
--           CASE 
--                WHEN  numero = 0 THEN
--                     contador := contador - 1;
               
--                WHEN numero > 0 THEN
--                soma := soma + 1;
--                ELSE 
--                soma := soma;
--           END CASE;
--           RAISE NOTICE '% ',numero;
--      END LOOP;
--      RAISE NOTICE '% valor(es) positivo(s)', soma;
-- END;
-- $$

-- exercício 1.1 com estrutura LOOP para números positivos
-- DO
-- $$
-- DECLARE 
--      contador INT := 1;
--      numero INT;
--      soma INT := 0;
-- BEGIN
-- RAISE NOTICE 'Números Positivos (-50 a 50 ) - LOOP
-- obs: Seis valores, negativos e/ou positivos.';
--      LOOP
--           numero := valor_aleatorio_entre(0,100) -50;
--           contador := contador + 1;
--           CASE 
--                WHEN  numero = 0 THEN
--                     contador := contador - 1;
               
--                WHEN numero > 0 THEN
--                soma := soma + 1;
--                ELSE 
--                soma := soma;
--           END CASE;
--           RAISE NOTICE '%', numero;
--           EXIT WHEN contador > 6;
--      END LOOP;
--      RAISE NOTICE '% valor(es) positivo(s)', soma;
-- END;
-- $$

-- exercício 1.1 com estrutura FOREACH para números pares
-- DO
-- $$
-- DECLARE
--       numeros INT[] := ARRAY(SELECT generate_series(1, 100));
--       numero INT;

--      -- numeros INT[] := ARRAY[
--      -- 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,
--      -- 51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100];
-- BEGIN
--      RAISE NOTICE 'Números Pares (1 - 100) - FOREACH';
--      FOREACH numero IN ARRAY numeros LOOP
--          CONTINUE WHEN numero % 2 = 1;
--          RAISE NOTICE '%', numero;
--      END LOOP;
-- END;
-- $$

-- exercício 1.1 com estrutura FOR para números pares
-- DO
-- $$
-- DECLARE 
-- BEGIN
-- RAISE NOTICE 'Números Pares (1 - 100) - FOR';
--     FOR i IN 1..100 LOOP  
--           CONTINUE WHEN i % 2 = 1;
--           RAISE NOTICE '%', i;
--      END LOOP;
-- END;
-- $$

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