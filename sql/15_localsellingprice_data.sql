-- =========================================================
-- LocalSellingPrice table -- FULL DATA (22 rows)
-- 22 product prices from bpc_selling_price.xlsx, BPC
-- =========================================================

USE energy_data;

INSERT INTO LocalSellingPrice (product_category, product_name, price_unit, effective_date) VALUES
('Local Selling Price', 'HSD (Diesel)', 'Tk/litre', '2026-04-19'),
('Local Selling Price', 'SKO (Kerosene)', 'Tk/litre', '2026-04-19'),
('Local Selling Price', 'HOBC (Octane)', 'Tk/litre', '2026-04-19'),
('Local Selling Price', 'MS (Petrol)', 'Tk/litre', '2026-04-19'),
('Domestic Flight', 'Jet A-1', 'Tk/litre', '2026-05-08'),
('International Flight', 'Jet A-1', 'USD/litre', '2026-05-08'),
('Local Selling Price', 'LP Gas (12.50kg Cylinder)', 'Tk/Cylinder', '2026-02-23'),
('Local Selling Price', 'SBPS', 'Tk/litre', '2026-05-06'),
('Local Selling Price', 'MTT', 'Tk/litre', '2026-05-06'),
('Local Selling Price', 'JBO', 'Tk/litre', '2026-05-06'),
('Local Selling Price', 'LDO', 'Tk/litre', '2026-05-06'),
('Local Selling Price', 'FO (Furnace Oil)', 'Tk/litre', '2026-04-12'),
('Local Selling Price', 'LMS (Light Motor Spirit)', 'Tk/litre', '2026-05-06'),
('Bunker Price', 'HSD Bunker (Chittagong Port)', 'USD/M.Ton', '2026-05-06'),
('Bunker Price', 'HSD Bunker (Mongla Port)', 'USD/M.Ton', '2026-05-06'),
('Bunker Price', 'Marine Fuel Bunker (Chittagong Port)', 'USD/M.Ton', '2026-05-06'),
('Bunker Price', 'Marine Fuel Bunker (Mongla Port)', 'USD/M.Ton', '2026-05-06'),
('Local Selling Price', 'Marine Fuel/Furnace Oil (0.5% Sulphur)', 'Tk/litre', '2026-05-06'),
('Selling Price per Drum', 'Bitumen Drum (80/100 Grade)', 'Tk/Drum', '2026-05-06'),
('Selling Price per Drum', 'Bitumen Drum (60/70 Grade)', 'Tk/Drum', '2026-05-06'),
('Selling Price per M.Ton', 'Bitumen Bulk (80/100 Grade)', 'Tk/M.Ton', '2026-05-06'),
('Selling Price per M.Ton', 'Bitumen Bulk (60/70 Grade)', 'Tk/M.Ton', '2026-05-06');

