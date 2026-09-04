-- =========================================================
-- PipelineNetwork table -- FULL DATA (5 rows)
-- 5 pipeline segments from JGTDSL transmission network -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO PipelineNetwork (pipeline_name, from_location, to_location, diameter_inch, length_km, capacity_mmcfd, status, org_id) VALUES
('Kailashtila-Kuchai Gas Pipeline', 'Kailashtila Gas Field', 'Kuchai', 8, 13, 62, 'Operating', 7),
('Kuchai-Chhatak Gas Pipeline', 'Kuchai', 'Chhatak', 6, 39, 36, 'Operating', 7),
('Devpur-Kumargaon Gas Pipeline', 'Devpur', 'Kumargaon', 6, 11, 36, 'Operating', 7),
('Shahaji Bazar-Shamsher Nagar Gas Pipeline', 'Shahjibazar', 'Shamsher Nagar (Sreemangal)', 6, 65, 11, 'Operating', 7),
('Kuchai DRS to Gobindogonj VS Pipeline', 'Kuchai', 'Gobindogonj', 6, 34, 34, 'Operating', 7);

