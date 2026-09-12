-- =========================================================
-- GasProject table -- REPLACEMENT DATA (FULL: 24 rows)
-- Completes GasProject to full list: 17 Completed + 7 Future JGTDSL projects
-- Source: JGTDSL projects.xlsx -- depends on Organization
-- NOTE: This file REPLACES the 8 sample GasProject rows already loaded.
-- If you already ran the original energy_sector_data.sql, first run:
--   DELETE FROM GasProject;
-- before running this file, to avoid duplicate rows.
-- =========================================================

USE energy_data;

INSERT INTO GasProject (project_type, sl, project_name, org_id) VALUES
('Completed Project', 1, 'Hobiganj Tea Vally Gas Supply Project', 7),
('Completed Project', 2, 'Sylhet Town Gas Supply Project', 7),
('Completed Project', 3, 'Sunamganj Town Gas Supply Project', 7),
('Completed Project', 4, 'Kailashtila-Chatak Pipeline Project', 7),
('Completed Project', 5, 'Tea Estate Gas Supply Project (Phase - i)', 7),
('Completed Project', 6, 'Tea Estate Gas Supply Project (Phase - ii)', 7),
('Completed Project', 7, 'Chatak Town Gas Supply Project', 7),
('Completed Project', 8, 'Rural Gas Supply Project (Phase - i)', 7),
('Completed Project', 9, 'Rural Gas Supply Project (Phase - ii)', 7),
('Completed Project', 10, 'Sylhet Combined Cycle Power Plant and Shahjalal Fertilizer Factory Gas supply project', 7),
('Completed Project', 11, 'Third Natural Gas Development Project', 7),
('Completed Project', 12, 'Jalalabad Gas Head Office Building Construction Project', 7),
('Completed Project', 13, 'Nobiganj Gas Supply and Distribution Project', 7),
('Completed Project', 14, 'Sylhet Gas Transmission Network Upgradation Project', 7),
('Completed Project', 15, 'Sreehatto Economic Zone Gas Supply Project', 7),
('Completed Project', 16, 'Installation of 50000 pre-paid gas meters in JGTDSL franchise areas', 7),
('Completed Project', 17, 'Construction of JGTDSL Center Store Complex', 7),
('Future Project', 1, 'Construction of 40 km Gas Pipeline from Zakiganj Gas Field To Kailashtilla, Golapgonj', 7),
('Future Project', 2, 'Installation of 150000 nos. Prepaid Gas Meter at JGTDSL Franchise area', 7),
('Future Project', 3, 'Construction of 12" Dia 57Km X 500 psig Gas Pipeline from Shahjibazar to Sreemangal', 7),
('Future Project', 4, 'Construction of Sylhet Town Ring Main Distribution and Balancing Gas Pipeline', 7),
('Future Project', 5, 'Shahjibazar to Srimangal Gas Network Upgradation Project', 7),
('Future Project', 6, 'Construction Rehabilitation and Balancing of Distribution Pipeline Network of Jalalabad Gas in Sylhet Town', 7),
('Future Project', 7, 'Installation of 1,50,000 Prepaid Gas Meter at JGTDSL Franchise area', 7);