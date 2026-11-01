CREATE TABLE sample_values (value INTEGER);
INSERT INTO sample_values (value) VALUES (3), (1), (4), (1), (5), (9);
SELECT COUNT(*) AS item_count, SUM(value) AS total FROM sample_values;
