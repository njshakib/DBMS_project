-- =========================================================
-- CoalField table -- FULL DATA (5 rows)
-- 5 coalfields: Barapukuria, Phulbari, Khalashpir, Dighipara, Jamalganj (bangladesh coalfields.xlsx) -- depends on Organization
-- =========================================================

USE energy_data;

INSERT INTO CoalField (coalfield_name, district, division, discovery_year, discovered_by, area_sq_km, depth_range_m, total_reserve_million_tons, extractable_reserve_million_tons, coal_type, coal_grade, ash_content_percent, moisture_content_percent, sulfur_content_percent, calorific_value_btu_per_lb, mining_status, mining_method, org_id) VALUES
('Barapukuria', 'Dinajpur', 'Rajshahi', '1985', 'Geological Survey of Bangladesh (GSB)', '5.25', '118-509', 390, '64', 'High Volatile Bituminous', 'Good', '8.87-12.4', '4.81-10', '0.53-0.71', '11040-12000', 'Operational since 2003', 'Underground Longwall Mining', 14),
('Phulbari', 'Dinajpur', 'Rajshahi', '1997', 'BHP Minerals (USA-Australia)', '~23', '130-260', 572, 'N/A', 'Bituminous', 'Fair', '14.4-15.0', '8.5', 'N/A', 'N/A', 'Not Operational', 'Proposed Open Pit Mining', 14),
('Khalashpir', 'Rangpur', 'Rangpur', '1989', 'Geological Survey of Bangladesh (GSB)', '~13', '257-450', 685, 'N/A', 'Bituminous', 'Fair', '13.12-21.8', '5.11', 'N/A', '11264', 'Not Operational', 'Under Feasibility Study', 14),
('Dighipara', 'Dinajpur', 'Rajshahi', '1995', 'Geological Survey of Bangladesh (GSB)', 'N/A', '~250', 706, 'N/A', 'Bituminous', 'Good', '10.14-11.29', '6.77', 'N/A', 'N/A', 'Not Operational', 'Under Feasibility Study', 14),
('Jamalganj', 'Joypurhat', 'Rajshahi', '1959-1962', 'Geological Survey of Pakistan (GSP) / GSB', 'N/A', '640-1158', 5450, 'N/A', 'High Volatile Bituminous', 'Poor', '19.96-24.2', '3.58', '0.55', '~12100', 'Not Operational - Too Deep', 'Proposed UCG / CBM', 14);

