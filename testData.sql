ALTER SESSION SET NLS_DATE_FORMAT = 'MM/DD/YYYY';

-- create the regions for branches
INSERT INTO REGION VALUES (1, 'Auckland');
INSERT INTO REGION VALUES (2, 'Wellington');
INSERT INTO REGION VALUES (3, 'Tauranga');
INSERT INTO REGION VALUES (4, 'Christchurch');
INSERT INTO REGION VALUES (5, 'Dunedin');

-- create the address for the branches
INSERT INTO ADDRESS VALUES (1, 123, 'Queen street', 'Auckland City', 'Auckland', 1);
INSERT INTO ADDRESS VALUES (2, 123, 'Queen street', 'Wellington City', 'Wellington', 2);
INSERT INTO ADDRESS VALUES (3, 123, 'Queen street', 'Tauranga City', 'Tauranga', 3);
INSERT INTO ADDRESS VALUES (4, 123, 'Queen street', 'Christchurch City', 'Christchurch', 4);
INSERT INTO ADDRESS VALUES (5, 123, 'Queen street', 'Dunedin City', 'Dunedin', 5);

-- create the branches
INSERT INTO BRANCH VALUES (1, 098765432, 'auckland@nzcsa.co.nz', 1);
INSERT INTO BRANCH VALUES (2, 068765432, 'wellington@nzcsa.co.nz', 2);
INSERT INTO BRANCH VALUES (3, 038765432, 'tauranga@nzcsa.co.nz', 3);
INSERT INTO BRANCH VALUES (4, 018765432, 'christchurch@nzcsa.co.nz', 4);
INSERT INTO BRANCH VALUES (5, 058765432, 'dunedin@nzcsa.co.nz', 5);

-- create employee positions
INSERT INTO POSITION VALUES (1, 'Branch Manager');
INSERT INTO POSITION VALUES (2, 'Receptionist');
INSERT INTO POSITION VALUES (3, 'Sales Manager');
INSERT INTO POSITION VALUES (4, 'DBA');
INSERT INTO POSITION VALUES (5, 'Cleaner');

-- create employees addresses
INSERT INTO ADDRESS VALUES (6, 123, 'Queen street', 'Auckland City', 'Auckland', 1);
INSERT INTO ADDRESS VALUES (7, 123, 'Queen street', 'Wellington City', 'Wellington', 2);
INSERT INTO ADDRESS VALUES (8, 123, 'Queen street', 'Tauranga City', 'Tauranga', 3);
INSERT INTO ADDRESS VALUES (9, 123, 'Queen street', 'Christchurch City', 'Christchurch', 4);
INSERT INTO ADDRESS VALUES (10, 123, 'Queen street', 'Dunedin City', 'Dunedin', 5);

-- create employees
INSERT INTO EMPLOYEE VALUES (1, 'Marney', 'Sebley', '8/28/1993', '296-404-2330', 'msebley0nzcsa.co.nz', '2/17/2003', 6, 1, 1);
INSERT INTO EMPLOYEE VALUES (2, 'Vanya', 'Griswood', '9/12/1966', '382-917-0790', 'vgriswood1nzcsa.co.nz', '1/31/2012', 7, 2, 1);
INSERT INTO EMPLOYEE VALUES (3, 'Alanah', 'Divall', '11/14/1991', '598-567-2984', 'adivall2nzcsa.co.nz', '2/23/2015', 8, 3, 1);
INSERT INTO EMPLOYEE VALUES (4, 'Ranna', 'Clayton', '2/9/1971', '571-250-3567', 'rclayton3nzcsa.co.nz', '9/5/2011', 9, 4, 1);
INSERT INTO EMPLOYEE VALUES (5, 'Farley', 'Bricksey', '9/30/2001', '553-820-3581', 'fbricksey4nzcsa.co.nz', '3/9/2008', 10, 5, 1);

-- create company addresses
INSERT INTO ADDRESS VALUES (11, 123, 'Queen street', 'Auckland City', 'Auckland', 1);
INSERT INTO ADDRESS VALUES (12, 123, 'Queen street', 'Wellington City', 'Wellington', 2);
INSERT INTO ADDRESS VALUES (13, 123, 'Queen street', 'Tauranga City', 'Tauranga', 3);
INSERT INTO ADDRESS VALUES (14, 123, 'Queen street', 'Christchurch City', 'Christchurch', 4);
INSERT INTO ADDRESS VALUES (15, 123, 'Queen street', 'Dunedin City', 'Dunedin', 5);
INSERT INTO ADDRESS VALUES (16, 123, 'Queen street', 'Auckland City', 'Auckland', 1);
INSERT INTO ADDRESS VALUES (17, 123, 'Queen street', 'Wellington City', 'Wellington', 2);
INSERT INTO ADDRESS VALUES (18, 123, 'Queen street', 'Tauranga City', 'Tauranga', 3);
INSERT INTO ADDRESS VALUES (19, 123, 'Queen street', 'Christchurch City', 'Christchurch', 4);
INSERT INTO ADDRESS VALUES (20, 123, 'Queen street', 'Dunedin City', 'Dunedin', 5);

-- create companies
INSERT INTO COMPANY VALUES (1, 'Photospace', 'tcharters0@lycos.com', '270-434-1527', 11, 1);
INSERT INTO COMPANY VALUES (2, 'Twinte', 'iswansborough1@blogspot.com', '962-466-1141', 12, 2);
INSERT INTO COMPANY VALUES (3, 'Photobean', 'aosburn2@springer.com', '635-133-0302', 13, 3);
INSERT INTO COMPANY VALUES (4, 'LiveZ', 'nfife3@rediff.com', '779-529-1260', 14, 4);
INSERT INTO COMPANY VALUES (5, 'Avamba', 'adobney4@columbia.edu', '523-629-5465', 15, 5);
INSERT INTO COMPANY VALUES (6, 'Thoughtstorm', 'akohnen5@economist.com', '470-327-4182', 16, 1);
INSERT INTO COMPANY VALUES (7, 'Flashdog', 'hhowlin6@newyorker.com', '380-694-5308', 17, 2);
INSERT INTO COMPANY VALUES (8, 'Tagcat', 'dhakey7@hexun.com', '870-481-6545', 18, 3);
INSERT INTO COMPANY VALUES (9, 'Tekfly', 'ghazelby8@ezinearticles.com', '879-165-3287', 19, 4);
INSERT INTO COMPANY VALUES (10, 'Edgetag', 'cpopeley9@oracle.com', '329-466-3325', 20, 5);

-- create qualifications
INSERT INTO QUALIFICATION VALUES (1, 'JbFrs', 'Job Fairs', 4, 'Abant Izzet Baysal University', 3);
INSERT INTO QUALIFICATION VALUES (2, 'Krns', 'Kronos', 4, 'University of California, Berkeley', 2);
INSERT INTO QUALIFICATION VALUES (3, 'RRDTl','RRDTool', 3, 'Centre College', 3);
INSERT INTO QUALIFICATION VALUES (4, 'CrystlXclss08', 'Crystal Xcelsius 2008', 1, 'Universidad Católica Boliviana, La Paz', 2);
INSERT INTO QUALIFICATION VALUES (5, 'SAP', 'SAP HR', 1, 'Adama Science and Technology University', 2);

-- create openings
INSERT INTO OPENING VALUES (1, 'Structural Analysis Engineer', '35.76', '1/26/1996', '9/15/2011', 1, 1, 1);
INSERT INTO OPENING VALUES (2, 'Internal Auditor', '41.84', '10/20/1993', '3/8/2017', 1, 1, 2);
INSERT INTO OPENING VALUES (3, 'Data Coordiator', '28.31', '8/12/1982', '12/13/2010', 1, 1, 3);
INSERT INTO OPENING VALUES (4, 'Structural Engineer', '42.58', '1/15/1982', '11/24/2015', 1, 1, 4);
INSERT INTO OPENING VALUES (5, 'Analyst Programmer', '26.83', '11/7/2016', '2/23/2015', 1, 1, 5);

INSERT INTO OPENING VALUES (6, 'Software Engineer IV', '41.46', '11/10/2005', '8/25/2020', 2, 2, 1);
INSERT INTO OPENING VALUES (7, 'Technical Writer', '37.33', '1/20/1993', '11/21/2014', 2, 2, 2);
INSERT INTO OPENING VALUES (8, 'Financial Analyst', '47.29', '12/9/2015', '8/7/2013', 2, 2, 3);
INSERT INTO OPENING VALUES (9, 'Food Chemist', '26.64', '11/17/1974', '7/27/2018', 2, 2, 4);
INSERT INTO OPENING VALUES (10, 'Human Resources Assistant III', '37.84', '7/1/1996', '10/17/2016', 2, 2, 5);

INSERT INTO OPENING VALUES (11, 'Structural Analysis Engineer', '40.33', '9/13/2003', '4/25/2014', 3, 3, 1);
INSERT INTO OPENING VALUES (12, 'Marketing Assistant', '35.16', '11/28/1993', '10/12/2016', 3, 3, 2);
INSERT INTO OPENING VALUES (13, 'Legal Assistant', '21.16', '6/4/1976', '4/29/2014', 3, 3, 3);
INSERT INTO OPENING VALUES (14, 'Senior Cost Accountant', '22.30', '5/16/1974', '12/26/2017', 3, 3, 4);
INSERT INTO OPENING VALUES (15, 'Senior Sales Associate', '37.47', '11/13/1975', '10/5/2012', 3, 3, 5);

INSERT INTO OPENING VALUES (16, 'Technical Writer', '25.99', '12/25/2018', '5/9/2020', 4, 4, 1);
INSERT INTO OPENING VALUES (17, 'Staff Scientist', '22.35', '4/3/1986', '6/29/2018', 4, 4, 2);
INSERT INTO OPENING VALUES (18, 'Software Engineer I', '27.56', '1/15/2018', '4/7/2012', 4, 4, 3);
INSERT INTO OPENING VALUES (19, 'Software Consultant', '24.70', '9/17/1986', '11/5/2019', 4, 4, 4);
INSERT INTO OPENING VALUES (20, 'Geological Engineer', '44.56', '11/16/2004', '6/8/2015', 4, 4, 5);

INSERT INTO OPENING VALUES (21, 'Community Outreach Specialist', '47.13', '8/26/1995', '8/27/2017', 5, 5, 1);
INSERT INTO OPENING VALUES (22, 'Nurse', '36.32', '10/9/1984', '6/17/2017', 5, 5, 2);
INSERT INTO OPENING VALUES (23, 'Help Desk Operator', '36.55', '12/13/2001', '11/11/2010', 5, 5, 3);
INSERT INTO OPENING VALUES (24, 'Marketing Assistant', '34.67', '5/7/1996', '12/5/2019', 5, 5, 4);
INSERT INTO OPENING VALUES (25, 'Registered Nurse', '33.78', '1/29/2010', '9/26/2010', 5, 5, 5);

INSERT INTO OPENING VALUES (26, 'Actuary', '22.98', '9/10/1996', '9/16/2019', 6, 1, 1);
INSERT INTO OPENING VALUES (27, 'Help Desk Operator', '23.43', '11/19/1973', '9/25/2020', 6, 1, 2);
INSERT INTO OPENING VALUES (28, 'Research Assistant II', '28.50', '12/4/1986', '3/2/2011', 6, 1, 3);
INSERT INTO OPENING VALUES (29, 'Analog Circuit Design manager', '28.65', '3/29/1999', '10/3/2019', 6, 1, 4);
INSERT INTO OPENING VALUES (30, 'Pharmacist', '44.49', '5/15/1982', '11/29/2011', 6, 1, 5);

INSERT INTO OPENING VALUES (31, 'Graphic Designer', '26.26', '4/15/1971', '8/12/2017', 7, 2, 1);
INSERT INTO OPENING VALUES (32, 'Administrative Assistant IV', '35.98', '4/17/1976', '5/4/2017', 7, 2, 2);
INSERT INTO OPENING VALUES (33, 'Statistician I', '31.68', '10/22/2009', '1/1/2017', 7, 2, 3);
INSERT INTO OPENING VALUES (34, 'Account Executive', '22.94', '6/16/2018', '3/7/2018', 7, 2, 4);
INSERT INTO OPENING VALUES (35, 'Marketing Manager', '41.04', '12/16/1986', '10/1/2012', 7, 2, 5);

INSERT INTO OPENING VALUES (36, 'Desktop Support Technician', '35.63', '5/24/1970', '12/26/2014', 8, 3, 1);
INSERT INTO OPENING VALUES (37, 'GIS Technical Architect', '30.26', '12/27/2003', '8/30/2016', 8, 3, 2);
INSERT INTO OPENING VALUES (38, 'Structural Engineer', '28.89', '12/23/1991', '8/7/2010', 8, 3, 3);
INSERT INTO OPENING VALUES (39, 'Budget/Accounting Analyst II', '42.36', '8/27/1993', '12/12/2014', 8, 3, 4);
INSERT INTO OPENING VALUES (40, 'Systems Administrator IV', '20.88', '7/15/1980', '9/27/2019', 8, 3, 5);

INSERT INTO OPENING VALUES (41, 'Assistant Media Planner', '31.37', '1/21/1981', '4/10/2014', 9, 4, 1);
INSERT INTO OPENING VALUES (42, 'Engineer II', '45.54', '8/17/1975', '12/4/2016', 9, 4, 2);
INSERT INTO OPENING VALUES (43, 'Web Developer III', '32.45', '8/26/1975', '4/19/2019', 9, 4, 3);
INSERT INTO OPENING VALUES (44, 'Environmental Tech', '44.41', '10/28/2007', '1/13/2012', 9, 4, 4);
INSERT INTO OPENING VALUES (45, 'Senior Editor', '48.62', '3/26/1988', '3/9/2017', 9, 4, 5);

INSERT INTO OPENING VALUES (46, 'Project Manager', '44.00', '1/12/1972', '1/7/2017', 10, 5, 1);
INSERT INTO OPENING VALUES (47, 'Senior Developer', '23.44', '4/20/2012', '3/26/2016', 10, 5, 2);
INSERT INTO OPENING VALUES (48, 'Database Administrator IV', '27.74', '4/7/1998', '10/14/2018', 10, 5, 3);
INSERT INTO OPENING VALUES (49, 'VP Sales', '30.31', '12/17/1976', '5/7/2020', 10, 5, 4);
INSERT INTO OPENING VALUES (50, 'Structural Analysis Engineer', '23.54', '5/11/1982', '1/13/2016', 10, 5, 5);

-- create applicants
INSERT INTO APPLICANT VALUES (1, '6/11/2008', 'Codi', 'Narducci', '3/24/1991', '658-233-0889', 'cnarducci0@cbc.ca', 6);
INSERT INTO APPLICANT VALUES (2, '4/23/2003', 'Evelyn', 'Izaac', '3/22/1991', '638-857-9852', 'eizaac1@nymag.com', 8);
INSERT INTO APPLICANT VALUES (3, '3/23/2003', 'Alard', 'Neame', '4/15/2005', '871-258-8090', 'aneame2@mapquest.com', 10);
INSERT INTO APPLICANT VALUES (4, '12/29/2018', 'Ingmar', 'Moneypenny', '4/3/1996', '498-497-1646', 'imoneypenny3@tripadvisor.com', 12);
INSERT INTO APPLICANT VALUES (5, '9/5/2015', 'Kahlil', 'Drohun', '3/1/1999', '585-482-4746', 'kdrohun4@cnn.com', 14);

-- create prerequistes
INSERT INTO PREREQUISITE VALUES (1);
INSERT INTO PREREQUISITE VALUES (2);
INSERT INTO PREREQUISITE VALUES (3);
INSERT INTO PREREQUISITE VALUES (4);
INSERT INTO PREREQUISITE VALUES (5);

-- create qualification prerequistes
INSERT INTO QUALIFICATION_PREREQUISITE VALUES (1, 1, 1);
INSERT INTO QUALIFICATION_PREREQUISITE VALUES (2, 2, 2);
INSERT INTO QUALIFICATION_PREREQUISITE VALUES (3, 3, 3);
INSERT INTO QUALIFICATION_PREREQUISITE VALUES (4, 4, 4);
INSERT INTO QUALIFICATION_PREREQUISITE VALUES (5, 5, 5);

-- create courses 
INSERT INTO COURSE VALUES (1, 100, NULL, 1);
INSERT INTO COURSE VALUES (2, 100, 1, 1);
INSERT INTO COURSE VALUES (3, 100, NULL, 1);
INSERT INTO COURSE VALUES (4, 100, 2, 1);
INSERT INTO COURSE VALUES (5, 100, 3, 1);

-- create training sessions
INSERT INTO TRAINING_SESSION VALUES (1, '1/1/2018', '10/1/2018', 20, 1);
INSERT INTO TRAINING_SESSION VALUES (2, '1/1/2018', '10/1/2018', 10, 2);
INSERT INTO TRAINING_SESSION VALUES (3, '1/1/2018', '10/1/2018', 20, 3);
INSERT INTO TRAINING_SESSION VALUES (4, '1/1/2018', '10/1/2018', 10, 4);
INSERT INTO TRAINING_SESSION VALUES (5, '1/1/2018', '10/1/2018', 20, 5);

-- create enrollements
INSERT INTO ENROL VALUES (1, 1, 1);
INSERT INTO ENROL VALUES (2, 2, 2);
INSERT INTO ENROL VALUES (3, 3, 3);
INSERT INTO ENROL VALUES (4, 4, 4);
INSERT INTO ENROL VALUES (5, 5, 5);

-- create placements
INSERT INTO PLACEMENT VALUES (1, 10, 1, 1);
INSERT INTO PLACEMENT VALUES (2, 100, 2, 1);
INSERT INTO PLACEMENT VALUES (3, 50, 3, 2);
INSERT INTO PLACEMENT VALUES (4, 200, 4, 2);
INSERT INTO PLACEMENT VALUES (5, 1000, 5, 2);
INSERT INTO PLACEMENT VALUES (6, 10, 6, 3);
INSERT INTO PLACEMENT VALUES (7, 100, 7, 3);
INSERT INTO PLACEMENT VALUES (8, 50, 8, 3);
INSERT INTO PLACEMENT VALUES (9, 200, 9, 3);
INSERT INTO PLACEMENT VALUES (10, 1000, 10, 4);

-- create job history
INSERT INTO JOB_HISTORY VALUES (1, 1, 1);
INSERT INTO JOB_HISTORY VALUES (2, 2, 1);
INSERT INTO JOB_HISTORY VALUES (3, 3, 2);
INSERT INTO JOB_HISTORY VALUES (4, 4, 2);
INSERT INTO JOB_HISTORY VALUES (5, 5, 2);
INSERT INTO JOB_HISTORY VALUES (6, 6, 3);
INSERT INTO JOB_HISTORY VALUES (7, 7, 3);
INSERT INTO JOB_HISTORY VALUES (8, 8, 3);
INSERT INTO JOB_HISTORY VALUES (9, 9, 3);
INSERT INTO JOB_HISTORY VALUES (10, 10, 4);

-- create payments
INSERT INTO PAYMENT VALUES (1, 50, 'ref: bob','1/1/2018');
INSERT INTO PAYMENT VALUES (2, 50, 'ref: bob','2/1/2018');
INSERT INTO PAYMENT VALUES (3, 100, 'ref: bob','3/1/2018');
INSERT INTO PAYMENT VALUES (4, 10, 'ref: bob','4/1/2018');
INSERT INTO PAYMENT VALUES (5, 10, 'ref: bob','5/1/2018');

-- create payment totals
INSERT INTO PAYMENT_TOTAL VALUES (1, 1, 1);
INSERT INTO PAYMENT_TOTAL VALUES (2, 1, 2);
INSERT INTO PAYMENT_TOTAL VALUES (3, 2, 3);
INSERT INTO PAYMENT_TOTAL VALUES (4, 3, 4);
INSERT INTO PAYMENT_TOTAL VALUES (5, 3, 5);

-- create applicant qualifications
INSERT INTO APPLICANT_QUALIFICATION VALUES (1, '1/1/2018', '10/1/2018', 1, 1);
INSERT INTO APPLICANT_QUALIFICATION VALUES (2, '1/1/2018', '10/1/2018', 2, 2);
INSERT INTO APPLICANT_QUALIFICATION VALUES (3, '1/1/2018', '10/1/2018', 3, 3);
INSERT INTO APPLICANT_QUALIFICATION VALUES (4, '1/1/2018', '10/1/2018', 4, 4);
INSERT INTO APPLICANT_QUALIFICATION VALUES (5, '1/1/2018', '10/1/2018', 5, 5);

Alter session set NLS_DATE_FORMAT = 'DD-MON-YY'; 
commit;
