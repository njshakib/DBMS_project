-- =========================================================
-- CustomerConnection table -- ADDITIONAL DATA (JGTDSL, 8 rows)
-- Completes CustomerConnection to full 24 rows: KGDCL(9) + BGDCL(7) + JGTDSL(8)
-- Source: category_wise_gas_connection_(JGTDCL).xlsx -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO CustomerConnection (category, no_of_connections, org_id) VALUES
('Power', 19, 7),
('Captive Power', 138, 7),
('Fertilizer', 1, 7),
('CNG', 59, 7),
('Industrial', 139, 7),
('Tea Estate', 100, 7),
('Commercial', 1197, 7),
('Domestic', 220227, 7);