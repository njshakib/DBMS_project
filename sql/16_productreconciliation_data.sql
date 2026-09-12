-- =========================================================
-- ProductReconciliation table -- FULL DATA (12 rows)
-- 12 products, FY2024-25, product_reconciliation.xlsx, POCL national aggregate
-- =========================================================

USE energy_data;

INSERT INTO ProductReconciliation (product_name, fiscal_year, reconciliation_value, depot_id) VALUES
('HOBC', '2024-25', 452781363, NULL),
('JET A-1', '2024-25', 3880753673, NULL),
('JP-5', '2024-25', 4928566, NULL),
('MS', '2024-25', 381838441, NULL),
('SKO', '2024-25', 336652477, NULL),
('HSD', '2024-25', 9602178225, NULL),
('LDO', '2024-25', 1148718, NULL),
('FO', '2024-25', 789246899, NULL),
('LSFO', '2024-25', 630328146, NULL),
('JBO', '2024-25', 193544745, NULL),
('MTT', '2024-25', 1856559, NULL),
('Dead Stock', '2024-25', 1495507756, NULL);

