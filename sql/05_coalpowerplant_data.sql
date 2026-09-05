-- =========================================================
-- CoalPowerPlant table -- FULL DATA (4 rows)
-- 4 coal power plants (bangladesh_coal_power_plants.xlsx) -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO CoalPowerPlant (plant_name, location, capacity_mw, org_id) VALUES
('Barapukuria Coal Power Plant', 'Dinajpur', 525, 15),
('Rampal Power Station', 'Bagerhat', 1320, 15),
('Payra Power Plant', 'Patuakhali', 1320, 15),
('Matarbari Coal Power Plant', 'Cox''s Bazar', 1200, 15);

