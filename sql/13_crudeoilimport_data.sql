-- =========================================================
-- CrudeOilImport table -- FULL DATA (9 rows)
-- 9 fiscal years 2016-17 to 2024-25 from import_crude_oil_data.xlsx, BPC -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO CrudeOilImport (fiscal_year, crude_oil_quantity, org_id) VALUES
('2016-17', 1387966, 11),
('2017-18', 1172175, 11),
('2018-19', 1358159, 11),
('2019-20', 1151814.22, 11),
('2020-21', 1505710.47, 11),
('2021-22', 1466177.69, 11),
('2022-23', 1551645.17, 11),
('2023-24', 1307668.4, 11),
('2024-25', 1509917.6, 11);

