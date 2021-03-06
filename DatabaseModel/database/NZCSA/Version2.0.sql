CREATE TABLE PREREQUISITE 
(
  PREREQUISITE_NUMBER NUMBER NOT NULL 
, CONSTRAINT PREREQUISITE_PK PRIMARY KEY 
  (
    PREREQUISITE_NUMBER 
  )
  ENABLE 
);

CREATE TABLE QUALIFICATION 
(
  QUAL_CODE NUMBER NOT NULL 
, QUAL_TYPE VARCHAR2(20) NOT NULL 
, QUAL_TITLE VARCHAR2(30) NOT NULL 
, QUAL_LEVEL VARCHAR2(20) NOT NULL 
, QUAL_PROVIDER VARCHAR2(20) NOT NULL 
, QUAL_DURATION NUMBER NOT NULL 
, CONSTRAINT QUALIFICATION_PK PRIMARY KEY 
  (
    QUAL_CODE 
  )
  ENABLE 
);

CREATE TABLE REGION 
(
  REGION_CODE NUMBER NOT NULL 
, REGION_NAME VARCHAR2(20) NOT NULL 
, REGION_DECRIPTION VARCHAR2(150) NOT NULL 
, CONSTRAINT REGION_PK PRIMARY KEY 
  (
    REGION_CODE 
  )
  ENABLE 
);

CREATE TABLE COURSE 
(
  COURSE_NUMBER NUMBER NOT NULL 
, PREREQUISITE_NUMBER NUMBER NOT NULL 
, QUAL_CODE NUMBER NOT NULL 
, COURSE_COST NUMBER NOT NULL 
, CONSTRAINT COURSE_PK PRIMARY KEY 
  (
    COURSE_NUMBER 
  )
  ENABLE 
);

CREATE TABLE PREREQUISITE_QUALIFICATION 
(
  PREREQUISITE_NUMBER NUMBER NOT NULL 
, QUALIFICATION_ID NUMBER NOT NULL 
, CONSTRAINT PREREQUISITE_QUALIFICATION_PK PRIMARY KEY 
  (
    PREREQUISITE_NUMBER 
  , QUALIFICATION_ID 
  )
  ENABLE 
);

CREATE TABLE ADDRESS 
(
  ADDRESS_ID NUMBER NOT NULL 
, STREET_NUMBER NUMBER NOT NULL 
, STREET_NAME VARCHAR2(20) NOT NULL 
, SUBURB VARCHAR2(20) NOT NULL 
, CITY VARCHAR2(20) NOT NULL 
, REGION_CODE NUMBER NOT NULL 
, CONSTRAINT ADDRESS_PK PRIMARY KEY 
  (
    ADDRESS_ID 
  )
  ENABLE 
);

CREATE TABLE TRAINING_SESSION 
(
  TRAINING_ID VARCHAR2(20) NOT NULL 
, TRAINING_START DATE NOT NULL 
, TRAINING_FINISH DATE NOT NULL 
, TRAINING_CLASS_SIZE NUMBER NOT NULL 
, COURSE_NUMBER NUMBER NOT NULL 
, CONSTRAINT TRAINING_SESSION_PK PRIMARY KEY 
  (
    TRAINING_ID 
  )
  ENABLE 
);

CREATE TABLE APPLICANT 
(
  APPLICANT_ID NUMBER GENERATED ALWAYS AS IDENTITY INCREMENT BY 1 START WITH 1 MAXVALUE 999999999999 MINVALUE 1 NOT NULL 
, CREATION_DATE DATE NOT NULL 
, APPLICANT_FNAME VARCHAR2(20) NOT NULL 
, APPLICANT_LNAME VARCHAR2(20) NOT NULL 
, APPLICANT_DOB DATE NOT NULL 
, APPLICANT_PHONE NUMBER NOT NULL 
, APPLICANT_EMAIL VARCHAR2(20) NOT NULL 
, ADDRESS_ID NUMBER NOT NULL 
, CONSTRAINT APPLICANT_PK PRIMARY KEY 
  (
    APPLICANT_ID 
  )
  ENABLE 
);

CREATE TABLE BRANCH 
(
  BRANCH_NUMBER NUMBER NOT NULL 
, BRANCH_PHONE NUMBER NOT NULL 
, BRANCH_EMAIL VARCHAR2(20) NOT NULL 
, ADDRESS_ID NUMBER NOT NULL 
, CONSTRAINT BRANCH_PK PRIMARY KEY 
  (
    BRANCH_NUMBER 
  )
  ENABLE 
);

CREATE TABLE APPLICANT_QUALIFICATION 
(
  APPLICANT_ID NUMBER NOT NULL 
, QUALIFICATION_ID NUMBER NOT NULL 
, AQ_START DATE NOT NULL 
, AQ_FINISH DATE NOT NULL 
, CONSTRAINT APPLICANT_QUALIFICATION_PK PRIMARY KEY 
  (
    APPLICANT_ID 
  , QUALIFICATION_ID 
  )
  ENABLE 
);

CREATE TABLE ENROL 
(
  TRAINING_ID VARCHAR2(20) NOT NULL 
, APPLICANT_ID NUMBER NOT NULL 
, CONSTRAINT ENROL_PK PRIMARY KEY 
  (
    TRAINING_ID 
  , APPLICANT_ID 
  )
  ENABLE 
);

CREATE TABLE COMPANY 
(
  COMPANY_NUMBER NUMBER NOT NULL 
, COMPANY_NAME VARCHAR2(20) NOT NULL 
, COMPANY_EMAIL VARCHAR2(20) NOT NULL 
, COMPANY_PHONE NUMBER NOT NULL 
, ADDRESS_ID NUMBER NOT NULL 
, BRANCH_NUMBER NUMBER NOT NULL 
, CONSTRAINT COMPANY_PK PRIMARY KEY 
  (
    COMPANY_NUMBER 
  )
  ENABLE 
);

CREATE TABLE OPENING 
(
  OPENING_ID NUMBER NOT NULL 
, OPENING_NAME VARCHAR2(20) NOT NULL 
, OPENING_PAY NUMBER NOT NULL 
, OPENING_START_DATE DATE NOT NULL 
, OPENING_FINISH_DATE DATE NOT NULL 
, BRANCH_NUMBER NUMBER NOT NULL 
, QUAL_CODE NUMBER NOT NULL 
, CONSTRAINT OPENING_PK PRIMARY KEY 
  (
    OPENING_ID 
  )
  ENABLE 
);

CREATE TABLE PAYMENT 
(
  PAYMENT_ID VARCHAR2(20) NOT NULL 
, PAYMENT_AMOUNT VARCHAR2(20) NOT NULL 
, PAYMENT_DETAILS VARCHAR2(20) 
, PAYMENT_DATE DATE NOT NULL 
, TRAINING_ID VARCHAR2(20) NOT NULL 
, APPLICANT_ID NUMBER NOT NULL 
, CONSTRAINT PAYMENT_PK PRIMARY KEY 
  (
    PAYMENT_ID 
  )
  ENABLE 
);

CREATE TABLE PLACEMENT 
(
  PLACEMENT_NUMBER NUMBER NOT NULL 
, OPENING_ID NUMBER NOT NULL 
, APPLICANT_ID NUMBER NOT NULL 
, COMPANY_NUMBER NUMBER NOT NULL 
, CONSTRAINT PLACEMENT_PK PRIMARY KEY 
  (
    PLACEMENT_NUMBER 
  )
  ENABLE 
);

CREATE TABLE JOB_HISTORY 
(
  PLACEMENT_NUMBER NUMBER NOT NULL 
, APPLICANT_ID NUMBER NOT NULL 
, CONSTRAINT JOB_HISTORY_PK PRIMARY KEY 
  (
    PLACEMENT_NUMBER 
  , APPLICANT_ID 
  )
  ENABLE 
);

ALTER TABLE ADDRESS
ADD CONSTRAINT REGION_CODE FOREIGN KEY
(
  REGION_CODE 
)
REFERENCES REGION
(
  REGION_CODE 
)
ENABLE;

ALTER TABLE APPLICANT
ADD CONSTRAINT ADDRESS_ID FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ADDRESS_ID 
)
ENABLE;

ALTER TABLE APPLICANT_QUALIFICATION
ADD CONSTRAINT APPLICANT_QUALIFICATION_FK1 FOREIGN KEY
(
  APPLICANT_ID 
)
REFERENCES APPLICANT
(
  APPLICANT_ID 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE APPLICANT_QUALIFICATION
ADD CONSTRAINT APPLICANT_QUALIFICATION_FK2 FOREIGN KEY
(
  QUALIFICATION_ID 
)
REFERENCES QUALIFICATION
(
  QUAL_CODE 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE BRANCH
ADD CONSTRAINT ADDRESS FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ADDRESS_ID 
)
ENABLE;

ALTER TABLE COMPANY
ADD CONSTRAINT COMPANY_ADDRESS FOREIGN KEY
(
  ADDRESS_ID 
)
REFERENCES ADDRESS
(
  ADDRESS_ID 
)
ENABLE;

ALTER TABLE COMPANY
ADD CONSTRAINT COMPANY_BRANCH FOREIGN KEY
(
  BRANCH_NUMBER 
)
REFERENCES BRANCH
(
  BRANCH_NUMBER 
)
ENABLE;

ALTER TABLE COURSE
ADD CONSTRAINT COURSE_PREREQUISITE FOREIGN KEY
(
  PREREQUISITE_NUMBER 
)
REFERENCES PREREQUISITE
(
  PREREQUISITE_NUMBER 
)
ENABLE;

ALTER TABLE COURSE
ADD CONSTRAINT QUALIFICATION FOREIGN KEY
(
  QUAL_CODE 
)
REFERENCES QUALIFICATION
(
  QUAL_CODE 
)
ENABLE;

ALTER TABLE ENROL
ADD CONSTRAINT TRAINING_SESSION_APPLICAN_FK1 FOREIGN KEY
(
  TRAINING_ID 
)
REFERENCES TRAINING_SESSION
(
  TRAINING_ID 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE ENROL
ADD CONSTRAINT TRAINING_SESSION_APPLICAN_FK2 FOREIGN KEY
(
  APPLICANT_ID 
)
REFERENCES APPLICANT
(
  APPLICANT_ID 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE JOB_HISTORY
ADD CONSTRAINT JOB_HISTORY_FK1 FOREIGN KEY
(
  PLACEMENT_NUMBER 
)
REFERENCES PLACEMENT
(
  PLACEMENT_NUMBER 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE JOB_HISTORY
ADD CONSTRAINT JOB_HISTORY_FK2 FOREIGN KEY
(
  APPLICANT_ID 
)
REFERENCES APPLICANT
(
  APPLICANT_ID 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT BRANCH_NUMBER FOREIGN KEY
(
  BRANCH_NUMBER 
)
REFERENCES BRANCH
(
  BRANCH_NUMBER 
)
ENABLE;

ALTER TABLE OPENING
ADD CONSTRAINT QUAL_CODE FOREIGN KEY
(
  QUAL_CODE 
)
REFERENCES QUALIFICATION
(
  QUAL_CODE 
)
ENABLE;

ALTER TABLE PAYMENT
ADD CONSTRAINT PAYMENT_ENROL FOREIGN KEY
(
  TRAINING_ID 
, APPLICANT_ID 
)
REFERENCES ENROL
(
  TRAINING_ID 
, APPLICANT_ID 
)
ENABLE;

ALTER TABLE PLACEMENT
ADD CONSTRAINT APPLICANT_ID FOREIGN KEY
(
  APPLICANT_ID 
)
REFERENCES APPLICANT
(
  APPLICANT_ID 
)
ENABLE;

ALTER TABLE PLACEMENT
ADD CONSTRAINT COMAANY_NUMBER FOREIGN KEY
(
  COMPANY_NUMBER 
)
REFERENCES COMPANY
(
  COMPANY_NUMBER 
)
ENABLE;

ALTER TABLE PLACEMENT
ADD CONSTRAINT OPENING_ID FOREIGN KEY
(
  OPENING_ID 
)
REFERENCES OPENING
(
  OPENING_ID 
)
ENABLE;

ALTER TABLE PREREQUISITE_QUALIFICATION
ADD CONSTRAINT PREREQUISITE_QUALIFICATIO_FK1 FOREIGN KEY
(
  PREREQUISITE_NUMBER 
)
REFERENCES PREREQUISITE
(
  PREREQUISITE_NUMBER 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE PREREQUISITE_QUALIFICATION
ADD CONSTRAINT PREREQUISITE_QUALIFICATIO_FK2 FOREIGN KEY
(
  QUALIFICATION_ID 
)
REFERENCES QUALIFICATION
(
  QUAL_CODE 
)
ON DELETE CASCADE ENABLE;

ALTER TABLE TRAINING_SESSION
ADD CONSTRAINT TRAINING_SESSION_COURSE_FK1 FOREIGN KEY
(
  COURSE_NUMBER 
)
REFERENCES COURSE
(
  COURSE_NUMBER 
)
ENABLE;
