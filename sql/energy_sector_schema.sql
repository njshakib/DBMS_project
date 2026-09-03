-- =========================================================
-- Bangladesh Energy Sector Data Integration
-- MySQL Schema: Gas Sector + Petroleum (BPC) Sector
-- Normalized to 3NF, based on Chen-notation ER model
-- =========================================================

CREATE DATABASE IF NOT EXISTS energy_data;
USE energy_data;

-- =========================================================
-- SECTION 1: GAS SECTOR
-- =========================================================

-- 1. Organization (shared central entity for Gas sector orgs)
CREATE TABLE Organization (
    org_id      INT AUTO_INCREMENT PRIMARY KEY,
    org_name    VARCHAR(100) NOT NULL,
    org_type    VARCHAR(50) NOT NULL   -- 'Distribution Company' / 'Field Operator'
);

-- 2. GasField
CREATE TABLE GasField (
    field_id                INT AUTO_INCREMENT PRIMARY KEY,
    field_name              VARCHAR(100) NOT NULL,
    location                VARCHAR(150),
    discovery_year          INT,
    production_start_year   INT,
    total_reserve_bcf       DECIMAL(12,2),
    total_wells_drilled     INT,
    producing_wells         INT,
    current_production_mmcfd DECIMAL(10,2),
    status                  VARCHAR(50),
    org_id                  INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 3. PipelineNetwork
CREATE TABLE PipelineNetwork (
    pipeline_id     INT AUTO_INCREMENT PRIMARY KEY,
    pipeline_name   VARCHAR(150),
    from_location   VARCHAR(100),
    to_location     VARCHAR(100),
    diameter_inch   DECIMAL(6,2),
    length_km       DECIMAL(10,3),
    capacity_mmcfd  DECIMAL(10,2),
    status          VARCHAR(50),
    org_id          INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 4. CustomerConnection
CREATE TABLE CustomerConnection (
    connection_id     INT AUTO_INCREMENT PRIMARY KEY,
    category          VARCHAR(50),   -- Power, Fertilizer, CNG, Industrial, Commercial, Domestic
    no_of_connections INT,
    org_id            INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 5. DailyGasDistribution
CREATE TABLE DailyGasDistribution (
    record_id     INT AUTO_INCREMENT PRIMARY KEY,
    record_date   DATE,
    category      VARCHAR(50),   -- Power, Other, Fertilizer
    volume_mmcfd  DECIMAL(10,3),
    org_id        INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 6. GasPurchaseSale (Petrobangla sector-level, standalone)
CREATE TABLE GasPurchaseSale (
    record_id         INT AUTO_INCREMENT PRIMARY KEY,
    customer_category VARCHAR(100),
    fiscal_year       VARCHAR(10),
    purchase_qty      DECIMAL(12,2),
    sale_qty          DECIMAL(12,2)
);

-- 7. GasFinancialData
CREATE TABLE GasFinancialData (
    record_id   INT AUTO_INCREMENT PRIMARY KEY,
    category    VARCHAR(100),   -- Financial Performance/Position/Cash Flow/Ratios
    particulars VARCHAR(150),
    fiscal_year VARCHAR(10),
    value       DECIMAL(15,2),
    org_id      INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 8. ExchequerContribution
CREATE TABLE ExchequerContribution (
    record_id   INT AUTO_INCREMENT PRIMARY KEY,
    category    VARCHAR(100),   -- Dividend, Corporate Tax, DSL, Import Duty & VAT
    fiscal_year VARCHAR(10),
    amount      DECIMAL(15,2),
    org_id      INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 9. GasProject
CREATE TABLE GasProject (
    project_id   INT AUTO_INCREMENT PRIMARY KEY,
    project_type VARCHAR(50),   -- Completed / Future
    sl           INT,
    project_name VARCHAR(255),
    org_id       INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);


-- =========================================================
-- SECTION 2: PETROLEUM (BPC) SECTOR
-- =========================================================

-- Reuses Organization table above (org_type = 'Corporation' / 'Refinery' / 'Depot')

-- 10. CrudeOilImport
CREATE TABLE CrudeOilImport (
    import_id           INT AUTO_INCREMENT PRIMARY KEY,
    fiscal_year         VARCHAR(10),
    crude_oil_quantity  DECIMAL(15,2),
    org_id              INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 11. RefineryProduction (ERL: CDU / SCP / ABP)
CREATE TABLE RefineryProduction (
    production_id    INT AUTO_INCREMENT PRIMARY KEY,
    plant_name       VARCHAR(50),   -- CDU / SCP / ABP
    product_category VARCHAR(100),  -- Light/Middle/Bottom Distillates, Naphtha, Bitumen...
    fiscal_year      VARCHAR(10),
    quantity_mt      DECIMAL(15,3),
    percentage       DECIMAL(5,2),
    org_id           INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 12. PetroleumProductSales (sector-level, standalone)
CREATE TABLE PetroleumProductSales (
    sale_id      INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),   -- Jet A-1, Octane, Petrol, Diesel, Furnace Oil, LPG, Bitumen...
    fiscal_year  VARCHAR(10),
    quantity_mt  DECIMAL(15,2)
);

-- 13. RefinedOilImport
CREATE TABLE RefinedOilImport (
    import_id    INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),   -- Furnace Oil, Lubricant Oil, Jet A-1
    fiscal_year  VARCHAR(10),
    value        DECIMAL(15,2),
    quantity     DECIMAL(15,2)
);

-- 14. LocalSellingPrice
CREATE TABLE LocalSellingPrice (
    price_id         INT AUTO_INCREMENT PRIMARY KEY,
    product_category VARCHAR(100),
    product_name     VARCHAR(100),
    price_unit       VARCHAR(20),
    effective_date   DATE
);

-- 15. DepotOperation
CREATE TABLE DepotOperation (
    depot_id   INT AUTO_INCREMENT PRIMARY KEY,
    depot_name VARCHAR(100),
    location   VARCHAR(150),
    org_id     INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 16. NetOperationalGainLoss
CREATE TABLE NetOperationalGainLoss (
    record_id    INT AUTO_INCREMENT PRIMARY KEY,
    note_section VARCHAR(20),   -- e.g. '30.01'
    location     VARCHAR(100),
    product      VARCHAR(50),   -- HOBC, JET A-1, MS, SKO
    volume_ltr   DECIMAL(15,2),
    amount_taka  DECIMAL(15,2),
    fiscal_year  VARCHAR(10),
    depot_id     INT,
    FOREIGN KEY (depot_id) REFERENCES DepotOperation(depot_id)
);

-- 17. ProductReconciliation
CREATE TABLE ProductReconciliation (
    record_id            INT AUTO_INCREMENT PRIMARY KEY,
    product_name         VARCHAR(100),
    fiscal_year          VARCHAR(10),
    reconciliation_value DECIMAL(15,2),
    depot_id             INT,
    FOREIGN KEY (depot_id) REFERENCES DepotOperation(depot_id)
);

-- =========================================================
-- SECTION 3: COAL SECTOR
-- =========================================================

-- Reuses Organization table (org_type = 'Mining Company' / 'Power Generation')

-- 18. CoalField
CREATE TABLE CoalField (
    field_id                      INT AUTO_INCREMENT PRIMARY KEY,
    coalfield_name                VARCHAR(100) NOT NULL,
    district                      VARCHAR(100),
    division                      VARCHAR(100),
    discovery_year                VARCHAR(20),
    discovered_by                 VARCHAR(150),
    area_sq_km                    VARCHAR(20),
    depth_range_m                 VARCHAR(50),
    total_reserve_million_tons    DECIMAL(10,2),
    extractable_reserve_million_tons VARCHAR(20),
    coal_type                     VARCHAR(100),
    coal_grade                    VARCHAR(20),
    ash_content_percent           VARCHAR(20),
    moisture_content_percent      VARCHAR(20),
    sulfur_content_percent        VARCHAR(20),
    calorific_value_btu_per_lb    VARCHAR(20),
    mining_status                 VARCHAR(100),
    mining_method                 VARCHAR(100),
    org_id                        INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 19. CoalPowerPlant
CREATE TABLE CoalPowerPlant (
    plant_id     INT AUTO_INCREMENT PRIMARY KEY,
    plant_name   VARCHAR(150) NOT NULL,
    location     VARCHAR(100),
    capacity_mw  DECIMAL(10,2),
    org_id       INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 20. CoalProduction (time-series, normalized out of CoalField to avoid 2NF violation)
CREATE TABLE CoalProduction (
    production_id           INT AUTO_INCREMENT PRIMARY KEY,
    report_date             VARCHAR(20),
    daily_production_avg_mt DECIMAL(12,2),
    monthly_production_mt   DECIMAL(15,2),
    field_id                INT,
    org_id                  INT,
    FOREIGN KEY (field_id) REFERENCES CoalField(field_id),
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 21. CoalFieldSupplies (N:M bridge table between CoalField and CoalPowerPlant)
CREATE TABLE CoalFieldSupplies (
    field_id  INT,
    plant_id  INT,
    PRIMARY KEY (field_id, plant_id),
    FOREIGN KEY (field_id) REFERENCES CoalField(field_id),
    FOREIGN KEY (plant_id) REFERENCES CoalPowerPlant(plant_id)
);

-- =========================================================
-- SECTION 4: POWER (BPDB) SECTOR
-- =========================================================

-- Reuses Organization table (org_type = 'Public' / 'Joint Venture' / 'Private' / 'Import')

-- 22. PowerPlant
CREATE TABLE PowerPlant (
    plant_id            INT AUTO_INCREMENT PRIMARY KEY,
    station_name        VARCHAR(150) NOT NULL,
    fuel_type           VARCHAR(50),
    installed_capacity  VARCHAR(50),
    present_capacity_mw DECIMAL(10,2),
    org_id              INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 23. DailyGeneration
CREATE TABLE DailyGeneration (
    record_id               INT AUTO_INCREMENT PRIMARY KEY,
    generation_date         DATE,
    peak_hour_generation_mw DECIMAL(10,2),
    energy_generated_kwh    DECIMAL(15,2),
    remarks                 VARCHAR(255),
    plant_id                INT,
    FOREIGN KEY (plant_id) REFERENCES PowerPlant(plant_id)
);

-- 24. GridSubstation
CREATE TABLE GridSubstation (
    substation_id      INT AUTO_INCREMENT PRIMARY KEY,
    substation_name    VARCHAR(150),
    operation_zone     VARCHAR(100),
    transformer_detail VARCHAR(150),
    total_capacity_mva DECIMAL(10,2),
    grid_circle        VARCHAR(50),
    org_id             INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 25. MaxGenerationRecord (national-level standalone, reported by BPDB)
CREATE TABLE MaxGenerationRecord (
    record_id                  INT AUTO_INCREMENT PRIMARY KEY,
    record_date                DATE,
    total_actual_day_peak      DECIMAL(10,2),
    total_actual_evening_peak  DECIMAL(10,2),
    total_probable_day_peak    DECIMAL(10,2),
    total_probable_evening_peak DECIMAL(10,2),
    org_id                     INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 26. InstalledCapacitySummary (national-level aggregate, reported by BPDB)
CREATE TABLE InstalledCapacitySummary (
    summary_id          INT AUTO_INCREMENT PRIMARY KEY,
    sector_category     VARCHAR(50),   -- Public / Joint Venture / Private / Import
    no_of_power_plant   INT,
    installed_capacity_mw DECIMAL(10,2),
    record_date         DATE,
    org_id              INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- =========================================================
-- SECTION 5: HYDROPOWER (KAPTAI) SECTOR
-- =========================================================

-- Reuses Organization table (org_id 16 = PDB/BPDB)

-- 27. HydropowerStation
CREATE TABLE HydropowerStation (
    station_id           INT AUTO_INCREMENT PRIMARY KEY,
    station_name         VARCHAR(100) NOT NULL,
    project_location      VARCHAR(150),
    main_river           VARCHAR(100),
    installed_capacity_mw DECIMAL(10,2),
    org_id               INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 28. HydropowerGeneration (year-wise time-series)
CREATE TABLE HydropowerGeneration (
    record_id                       INT AUTO_INCREMENT PRIMARY KEY,
    year_val                        INT,
    operational_turbines            INT,
    peak_generation_mw              DECIMAL(10,2),
    estimated_annual_generation_gwh DECIMAL(10,2),
    reservoir_water_level_ft        DECIMAL(6,2),
    average_rainfall_mm             DECIMAL(8,2),
    estimated_water_flow_m3s        DECIMAL(8,2),
    turbine_efficiency_percent      DECIMAL(5,2),
    co2_emission_reduction_tons     DECIMAL(12,2),
    station_id                      INT,
    FOREIGN KEY (station_id) REFERENCES HydropowerStation(station_id)
);

-- =========================================================
-- SECTION 6: RENEWABLE ENERGY (RE) SECTOR
-- =========================================================

-- Reuses Organization table (org_type = 'Public' / 'IPP' / 'PBS' / 'Distribution Company')

-- 29. REProject (central/supertype entity)
CREATE TABLE REProject (
    project_id     INT AUTO_INCREMENT PRIMARY KEY,
    sid            VARCHAR(20),
    project_name   VARCHAR(255) NOT NULL,
    capacity       VARCHAR(30),
    re_technology  VARCHAR(50),   -- Solar Park / Solar Irrigation / Wind (On-Grid) / Wind (Off-Grid)
    finance_source VARCHAR(150),
    completion_date DATE,
    present_status VARCHAR(50),
    location       VARCHAR(200),
    org_id         INT,
    FOREIGN KEY (org_id) REFERENCES Organization(org_id)
);

-- 30. SolarPark (subtype)
CREATE TABLE SolarPark (
    park_id    INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES REProject(project_id)
);

-- 31. SolarIrrigation (subtype)
CREATE TABLE SolarIrrigation (
    irrigation_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id    INT,
    FOREIGN KEY (project_id) REFERENCES REProject(project_id)
);

-- 32. WindProject (subtype, with extra attributes)
CREATE TABLE WindProject (
    wind_id                      INT AUTO_INCREMENT PRIMARY KEY,
    energy_generation_system_life VARCHAR(30),
    co2_reduction_system_life     VARCHAR(30),
    project_id                   INT,
    FOREIGN KEY (project_id) REFERENCES REProject(project_id)
);

-- =========================================================
-- End of Schema
-- =========================================================
