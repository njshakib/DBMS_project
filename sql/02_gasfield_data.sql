-- =========================================================
-- GasField table -- FULL DATA (24 rows)
-- 24 gas fields from BGFCL, SGFL, BAPEX, Chevron Bangladesh (Bangladesh GAS FIELD DETAILS.xlsx) -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO GasField (field_name, location, discovery_year, production_start_year, total_reserve_bcf, total_wells_drilled, producing_wells, current_production_mmcfd, status, org_id) VALUES
('Titas', 'Brahmanbaria Sadar, Brahmanbaria', 1962, 1968, 7881, 31, 23, 325, 'Active', 1),
('Habiganj', 'Habiganj District', 1963, 1968, 2785, 10, 7, 95, 'Active', 1),
('Bakhrabad', 'Muradnagar, Comilla', 1969, 1984, 1387, 10, 6, 34, 'Partially Active', 1),
('Narsingdi', 'Shibpur, Narsingdi', 1990, 1996, 345, 2, 2, 25.93, 'Active', 1),
('Meghna', 'Bancharampur, Brahmanbaria', 1990, 1997, 101, 1, 0, 0, 'Suspended', 1),
('Kamta', 'Gazipur District', 1985, NULL, NULL, NULL, 0, 0, 'Suspended', 1),
('Haripur', 'Haripur, Sylhet', 1955, 1957, 90, 8, 2, 10, 'Active', 2),
('Rashidpur', 'Habiganj District', 1960, 1978, 2433, 10, 4, 44, 'Active', 2),
('Kailashtila', 'Golapganj, Sylhet', 1962, 1983, 2758, 9, 4, 68, 'Active', 2),
('Beanibazar', 'Beanibazar, Sylhet', 1981, 1998, 450, 3, 2, 25, 'Active', 2),
('Jalalabad', 'Sylhet Sadar, Sylhet', 1989, 1999, 987, 4, 3, 55, 'Active', 2),
('Maulvibazar', 'Maulvibazar District', 1997, 2005, 400, 2, 1, 12, 'Active', 2),
('Shahbazpur', 'Bhola District', 1995, 1999, 590, 4, 3, 110, 'Active', 3),
('Bhola North', 'Bhola District', 2011, 2013, NULL, 2, 2, 30, 'Active', 3),
('Saldanadi', 'Narsingdi District', 1996, 2002, 62, 2, 1, 7, 'Active', 3),
('Fenchuganj', 'Fenchuganj, Sylhet', 1988, 2007, 395, 3, 2, 30, 'Active', 3),
('Semutang', 'Rangamati, Chittagong Hill Tracts', 1959, 2006, 43, 2, 1, 5, 'Active', 3),
('Begumganj', 'Noakhali District', 1995, 2006, 86, 2, 1, 10, 'Active', 3),
('Srikail', 'Munshiganj District', 2008, 2012, NULL, 2, 1, 12, 'Active', 3),
('Sundalpur', 'Comilla District', 2010, 2015, NULL, 1, 1, 8, 'Active', 3),
('Jamalpur', 'Jamalpur District', 2024, NULL, NULL, 1, 0, 0, 'Exploration', 3),
('Bibiyana', 'Block 12 - Habiganj District', 1998, 2007, 5000, 18, 16, 1200, 'Active', 4),
('Jalalabad (Chevron)', 'Block 13 - Sylhet District', 1989, 1999, 1400, 6, 4, 200, 'Active', 4),
('Moulvibazar (Chevron)', 'Block 14 - Moulvibazar District', 1997, 2005, 860, 4, 3, 80, 'Active', 4);

