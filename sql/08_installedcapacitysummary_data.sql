-- =========================================================
-- InstalledCapacitySummary table -- FULL DATA (4 rows)
-- 4 sector categories (Public/JV/Private/Import), 31 March 2026 -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO InstalledCapacitySummary (sector_category, no_of_power_plant, installed_capacity_mw, record_date, org_id) VALUES
('Public', 64, 12302, '2026-03-31', 16),
('Joint Venture', 3, 3068, '2026-03-31', 16),
('Private', 69, 10853, '2026-03-31', 16),
('Import', 4, 2696, '2026-03-31', 16);

