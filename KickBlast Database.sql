-- Create Database
CREATE DATABASE KickBlastJudo;
USE KickBlastJudo;

-- Athletes Table
CREATE TABLE Athletes2 (
    AthleteID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    TrainingPlan VARCHAR(50),
    CurrentWeight FLOAT,
    CompetitionWeight FLOAT NOT NULL,
    CompetitionsEntered INT NOT NULL,
    PrivateCoachingHours INT NOT NULL
);

-- Training Plans Table
CREATE TABLE TrainingPlans1 (
    PlanID INT IDENTITY(1,1) PRIMARY KEY,
    PlanName NVARCHAR(50) NOT NULL UNIQUE,
    WeeklyFee DECIMAL(10,2) NOT NULL
);

-- Competition Fees Table
CREATE TABLE CompetitionFees1 (
    CompetitionID INT IDENTITY(1,1) PRIMARY KEY,
    CompetitionName NVARCHAR(100) NOT NULL,
    Fee DECIMAL(10,2) NOT NULL
);

-- Insert sample training plans
INSERT INTO TrainingPlans1 (PlanName, WeeklyFee) VALUES
('Beginner', 250.00),
('Intermediate', 300.00),
('Elite', 350.00);

-- Insert sample competition fees
INSERT INTO CompetitionFees1 (CompetitionName, Fee) VALUES
('Local Tournament', 220.00),
('Regional Championship', 220.00),
('National Championship', 220.00);

--Insert sample althletes
INSERT INTO Athletes2(Name, TrainingPlan, CurrentWeight, CompetitionWeight, CompetitionsEntered, PrivateCoachingHours) VALUES
('Aaron', 'Intermediate', 74, 73, 2, 3),
('Kenji', 'Beginner', 66, 73, 0, 2),
('Kai', 'Elite', 75, 73, 4, 5);
