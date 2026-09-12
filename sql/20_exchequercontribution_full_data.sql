-- =========================================================
-- ExchequerContribution table -- REPLACEMENT DATA (FULL: 20 rows)
-- 4 categories x 5 fiscal years (2020-2021 to 2024-2025), Titas Gas
-- Source: titas_exchequer_contribution.xlsx -- depends on Organization
-- NOTE: This file REPLACES the 10 sample rows already loaded.
-- Run this first if you already loaded the original data:
--   DELETE FROM ExchequerContribution;
-- =========================================================

USE energy_data;

INSERT INTO ExchequerContribution (category, fiscal_year, amount, org_id) VALUES
('Dividend', '2020-2021', 192.89, 9),
('Dividend', '2021-2022', 163.22, 9),
('Dividend', '2022-2023', 78.19, 9),
('Dividend', '2023-2024', 39.5, 9),
('Dividend', '2024-2025', 39.5, 9),
('Corporate Tax', '2020-2021', 880.89, 9),
('Corporate Tax', '2021-2022', 882.13, 9),
('Corporate Tax', '2022-2023', 562.95, 9),
('Corporate Tax', '2023-2024', 818.95, 9),
('Corporate Tax', '2024-2025', 698.82, 9),
('DSL', '2020-2021', 10.19, 9),
('DSL', '2021-2022', 8.69, 9),
('DSL', '2022-2023', 26.69, 9),
('DSL', '2023-2024', 31.59, 9),
('DSL', '2024-2025', 20.86, 9),
('Import Duty & VAT', '2020-2021', 11.68, 9),
('Import Duty & VAT', '2021-2022', 26.83, 9),
('Import Duty & VAT', '2022-2023', 83.09, 9),
('Import Duty & VAT', '2023-2024', 88.06, 9),
('Import Duty & VAT', '2024-2025', 16.89, 9);