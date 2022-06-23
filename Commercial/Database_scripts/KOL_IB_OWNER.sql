--If any failure and error occurred then script rolls back exists--
WHENEVER SQLERROR EXIT FAILURE ROLLBACK
WHENEVER OSERROR EXIT FAILURE ROLLBACK
--log file is specified for spooling--
SPOOL IB_OWNER.log

--USERID, DB name and timestamp spooling in log--

SELECT 'User                      :   ', USER FROM DUAL;

SELECT 'Global Name               :   ', GLOBAL_NAME FROM GLOBAL_NAME;

SELECT 'System Date               :   ',
       TO_CHAR (SYSDATE, 'DD-MON-YYYY HH24:MM:DD')
  FROM DUAL;

-- Set Echo ON so that each commend executed should be available in LOG--
SET ECHO ON





--UDH
--POL_UDH_INTRM_LND_MAPP_TRANSACTIONS_STD
CREATE TABLE KOL_IB_OWNER.POL_UDH_INTRM_LND_MAPP_TRANSACTIONS_STD1
(
  EXTERNAL_ID                                   NVARCHAR2(2000),
  INITIATION_MONTH                              NVARCHAR2(2000),
  SUBMISSION_MONTH                              NVARCHAR2(2000),
  APPROVAL_MONTH                                NVARCHAR2(2000),
  INITIATION_DATE                               NVARCHAR2(2000),
  SUBMISSION_DATE                               NVARCHAR2(2000),
  APPROVAL_DATE                                 NVARCHAR2(2000),
  STATUS_DESCRIPTION                            NVARCHAR2(2000),
  SUB_STATUS_DESCRIPTION                        NVARCHAR2(2000),
  ASSIGNED_TO_GUID                              NVARCHAR2(2000),
  ASSIGNED_TO_NAME                              NVARCHAR2(2000),
  ASSIGNED_TO_EMAIL                             NVARCHAR2(2000),
  ASSIGNED_TO_NTID                              NVARCHAR2(2000),
  RECONCILED_BY_GUID                            NVARCHAR2(2000),
  RECONCILED_BY_NAME                            NVARCHAR2(2000),
  RECONCILIED_BY_EMAIL                          NVARCHAR2(2000),
  RECONCILIED_BY_NTID                           NVARCHAR2(2000),
  TYPE                                          NVARCHAR2(2000),
  TRANSACTION_ID                                NVARCHAR2(2000),
  TRANSACTION_TYPE                              NVARCHAR2(2000),
  VENUE                                         NVARCHAR2(2000),
  MEETING_NAME                                  NVARCHAR2(2000),
  IS_VIRTUAL_ONLY                               NVARCHAR2(2000),
  CURRENCY_ISO_CODE                             NVARCHAR2(2000),
  INITIATOR_GUID                                NVARCHAR2(2000),
  INITIATOR_NAME                                NVARCHAR2(2000),
  INITIATOR_EMAIL                               NVARCHAR2(2000),
  INITIATOR_NTID                                NVARCHAR2(2000),
  PROJECT_OWNER_GUID                            NVARCHAR2(2000),
  PROJECT_OWNER_NAME                            NVARCHAR2(2000),
  PROJECT_OWNER_EMAIL                           NVARCHAR2(2000),
  PROJECT_OWNER_NTID                            NVARCHAR2(2000),
  COUNTRY_CD                                    NVARCHAR2(2000),
  BUSINESS_DIVISION                             NVARCHAR2(2000),
  BUSINESS_DIVISION_ID                          NVARCHAR2(2000),
  BUSINESS_SUB_DIVISION                         NVARCHAR2(2000),
  BUSINESS_SUB_DIVISION_ID                      NVARCHAR2(2000),
  IS_CO_SUPPORTING                              NVARCHAR2(2000),
  COST_CENTER                                   NVARCHAR2(2000),
  PROJECT_NAME                                  NVARCHAR2(2000),
  IS_THIRD_PARTY                                NVARCHAR2(2000),
  IS_MEDICAL                                    NVARCHAR2(2000),
  EVENT_DATE                                    NVARCHAR2(2000),
  CLOSE_DATE                                    NVARCHAR2(2000),
  APPROVAL_STATUS                               NVARCHAR2(2000),
  REJECTIONS                                    NVARCHAR2(2000),
  ESTIMATED                                     NVARCHAR2(2000),
  ATTENDEES                                     NVARCHAR2(2000),
  HCP                                           NVARCHAR2(2000),
  GO_COUNT                                      NVARCHAR2(2000),
  PIGO_COUNT                                    NVARCHAR2(2000),
  NIP_PIGO_COUNT                                NVARCHAR2(2000),
  UNKNOWN_COUNT                                 NVARCHAR2(2000),
  FMV_USD                                       NVARCHAR2(2000),
  FMV                                           NVARCHAR2(2000),
  EPAY                                          NVARCHAR2(2000),
  EPAY_USD                                      NVARCHAR2(2000),
  RECONCILIATION                                NVARCHAR2(2000),
  RECONCILIATION_USD                            NVARCHAR2(2000),
  MEAL_COST                                     NVARCHAR2(2000),
  MEAL_COST_USD                                 NVARCHAR2(2000),
  AIRFARE_COST                                  NVARCHAR2(2000),
  AIRFARE_COST_USD                              NVARCHAR2(2000),
  HOTEL_COST                                    NVARCHAR2(2000),
  HOTEL_COST_USD                                NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST                          NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST_USD                      NVARCHAR2(2000),
  REGISTRATION_FEE                              NVARCHAR2(2000),
  REGISTRATION_FEE_USD                          NVARCHAR2(2000),
  COUNTER                                       NVARCHAR2(2000),
  EPAY_APPORTIONED                              NVARCHAR2(2000),
  EPAY_USD_APPORTIONED                          NVARCHAR2(2000),
  FMV_APPORTIONED                               NVARCHAR2(2000),
  FMV_USD_APPORTIONED                           NVARCHAR2(2000),
  RECONCILIATION_APPORTIONED                    NVARCHAR2(2000),
  RECONCILIATION_USD_APPORTIONED                NVARCHAR2(2000),
  MEAL_COST_APPORTIONED                         NVARCHAR2(2000),
  MEAL_COST_USD_APPORTIONED                     NVARCHAR2(2000),
  AIRFARE_COST_APPORTIONED                      NVARCHAR2(2000),
  AIRFARE_COST_USD_APPORTIONED                  NVARCHAR2(2000),
  HOTEL_COST_APPORTIONED                        NVARCHAR2(2000),
  HOTEL_COST_USD_APPORTIONED                    NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST_APPORTIONED              NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST_USD_APPORTIONED          NVARCHAR2(2000),
  REGISTRATION_FEE_APPORTIONED                  NVARCHAR2(2000),
  REGISTRATION_FEE_USD_APPORTIONED              NVARCHAR2(2000),
  TOTAL                                         NVARCHAR2(2000),
  TOTAL_USD                                     NVARCHAR2(2000),
  TOTAL_APPORTIONED                             NVARCHAR2(2000),
  TOTAL_USD_APPORTIONED                         NVARCHAR2(2000),
  IS_EPAY                                       NVARCHAR2(2000),
  SPECIALTY                                     NVARCHAR2(2000),
  COST_CENTER_WBS                               NVARCHAR2(2000),
  VARIANCE                                      NVARCHAR2(2000),
  R_CONTRIBUTION_TYPE                           NVARCHAR2(2000),
  ORG_ID                                        NVARCHAR2(2000),
  DESTINATION                                   NVARCHAR2(2000),
  BU                                            NVARCHAR2(2000),
  SUB_BU                                        NVARCHAR2(2000),
  CLUSTERR                                      NVARCHAR2(2000),
  PENDING_PAYMENT_USD                           NVARCHAR2(2000),
  PENDING_PAYMENT                               NVARCHAR2(2000),
  EXECUTED_PAYMENT_USD                          NVARCHAR2(2000),
  EXECUTED_PAYMENT                              NVARCHAR2(2000),
  SLA_DAYS                                      NVARCHAR2(2000),
  EVENT_TYPE                                    NVARCHAR2(2000),
  SLA_SUBM_VS_INITIATION_DATE                   NVARCHAR2(2000),
  SUBM_VS_EVENT_DATE                            NVARCHAR2(2000),
  TC_ASSIGNED_DATE                              NVARCHAR2(2000),
  SLA_SUBM_VS_TSCASSIGN                         NVARCHAR2(2000),
  APPROVAL_STARTED_DATE                         NVARCHAR2(2000),
  SLA_TSC_ASSIGN_VS_APPROVAL_START              NVARCHAR2(2000),
  APPROVAL_COMPLETED_DATE                       NVARCHAR2(2000),
  SLA_APPROVAL_START_VS_APPROVAL_COMPLT         NVARCHAR2(2000),
  CONTRACTING_STARTED_DATE                      NVARCHAR2(2000),
  CONTRACTING_COMPLETED_DATE                    NVARCHAR2(2000),
  SLA_CONT_START_VS_END                         NVARCHAR2(2000),
  EVENT_COMPLETED_DATE                          NVARCHAR2(2000),
  SLA_EVENT_DATE_VS_COMPLETE_DATE               NVARCHAR2(2000),
  RECONCILIATION_START_DATE                     NVARCHAR2(2000),
  SLA_EVENT_DATE_VS_RECON_START                 NVARCHAR2(2000),
  RECONCILIATION_TS_ASSIGNED_DATE               NVARCHAR2(2000),
  SLA_RECON_START_VS_RECON_TSC_ASSIGN           NVARCHAR2(2000),
  RECONCILIATION_FINISHED_DATE                  NVARCHAR2(2000),
  SLA_RECON_TSC_ASSIGN_VS_RECON_FINISH          NVARCHAR2(2000),
  FQE_GSQ_RECEIVED_DATE                         NVARCHAR2(2000),
  FQE_GSQ_SENT_DATE                             NVARCHAR2(2000),
  SLA_FQE_SENT_VS_FQE_RECEIVED                  NVARCHAR2(2000),
  TC_RECONCILIATION_ASSIGNED                    NVARCHAR2(2000),
  PAYMENT_STARTED                               NVARCHAR2(2000),
  PAYMENT_COMPLETED                             NVARCHAR2(2000),
  SLA_PAY_START_VS_COMPLETE                     NVARCHAR2(2000),
  CVENT_INFORMATION_SENT                        NVARCHAR2(2000),
  CVENT_INFORMATION_RECEIVED                    NVARCHAR2(2000),
  SLA_AWARDED_HOTEL                             NVARCHAR2(2000),
  REJECTION_STARTED                             NVARCHAR2(2000),
  REJECTION_COMPLETED                           NVARCHAR2(2000),
  SLA_REJECTION_DAYS                            NVARCHAR2(2000),
  SLA_REJECTION_FIRST_VS_LAST                   NVARCHAR2(2000),
  SLA_MARKET_LEGAL_APPROVAL                     NVARCHAR2(2000),
  SLA_FIRST_REJECT_VS_ASSIGN                    NVARCHAR2(2000),
  SLA_APPROVAL_START_VS_LAST_REVIEW             NVARCHAR2(2000),
  SLA_SUBMISSION_VS_FINAL_APPROVAL_COMPLETE     NVARCHAR2(2000),
  SLA_SUBMISSION_VS_APPROVAL_START              NVARCHAR2(2000),
  SLA_APPROVAL_START_VS_PROJECT_OWNER_APPROVAL  NVARCHAR2(2000),
  SLA_PROJECT_APPROVAL_VS_BU_SUPERVISOR         NVARCHAR2(2000),
  SLA_BU_SUPERVISOR_VS_LEAD_APPROVAL            NVARCHAR2(2000),
  EXTRACT_MONTH                                 NVARCHAR2(2000),
  EXTRACT_DATE                                  NVARCHAR2(2000),
  LOAD_SEQ_NUM                                  NVARCHAR2(2000),
  LOAD_DATE                                     NVARCHAR2(2000),
  ATLASROWID                                    NVARCHAR2(2000),
  CREATED_DATE                                  VARCHAR2(1000 BYTE),
  CREATED_BY                                    VARCHAR2(1000 BYTE),
  MODIFIED_DATE                                 VARCHAR2(1000 BYTE),
  MODFIED_BY                                    VARCHAR2(1000 BYTE)
);


CREATE OR REPLACE PUBLIC SYNONYM POL_UDH_INTRM_LND_MAPP_TRANSACTIONS_STD FOR KOL_IB_OWNER.POL_UDH_INTRM_LND_MAPP_TRANSACTIONS_STD;




--POL_UDH_INTRM_LND_MAPP_HCP_TRANSACTIONS_STD
CREATE TABLE KOL_IB_OWNER.POL_UDH_INTRM_LND_MAPP_HCP_TRANSACTIONS_STD_v1
(
  EXTERNAL_ID                           NVARCHAR2(2000),
  ATTENDEE_ID                           NVARCHAR2(2000),
  HCP_ID_DISPLAY                        NVARCHAR2(2000),
  HCP_ID_ATT                            NVARCHAR2(2000),
  HCP_STATUS                            NVARCHAR2(2000),
  FIRST_NAME                            NVARCHAR2(2000),
  LAST_NAME                             NVARCHAR2(2000),
  NAME                                  NVARCHAR2(2000),
  ENTITY_TYPE_ID                        NVARCHAR2(2000),
  ENTITY                                NVARCHAR2(2000),
  VENDOR_ID                             NVARCHAR2(2000),
  VENDOR_NAME                           NVARCHAR2(2000),
  TRANS_COUNTRY                         NVARCHAR2(2000),
  DESTINATION                           NVARCHAR2(2000),
  HCP_COUNTRY                           NVARCHAR2(2000),
  COUNTRY_LABEL                         NVARCHAR2(2000),
  SPECIALTY_CODE                        NVARCHAR2(2000),
  PRIMARY_SPECIALTY                     NVARCHAR2(2000),
  SECONDARY_SPECIALTY                   NVARCHAR2(2000),
  SECONDARY_SPECIALTY_DESC              NVARCHAR2(2000),
  TIER                                  NVARCHAR2(2000),
  NIP_PIGO_STATUS                       NVARCHAR2(2000),
  PIGO_STATUS                           NVARCHAR2(2000),
  GO_STATUS                             NVARCHAR2(2000),
  WORKPLACE_NAME                        NVARCHAR2(2000),
  DETERMINATION                         NVARCHAR2(2000),
  PRIMARY_PIGO_RATIONALE                NVARCHAR2(2000),
  SECONDARY_PIGO_RATIONALE              NVARCHAR2(2000),
  MO_DECISION                           NVARCHAR2(2000),
  SPEAKER                               NVARCHAR2(2000),
  ATTENDEE_TYPE                         NVARCHAR2(2000),
  CITY                                  NVARCHAR2(2000),
  STATE                                 NVARCHAR2(2000),
  MAPP_STATUS                           NVARCHAR2(2000),
  SUB_STATUS_DESCRIPTION                NVARCHAR2(2000),
  DESCRIPTION_OF_SERVICES               NVARCHAR2(2000),
  INTERNATIONAL_OR_DOMESTIC             NVARCHAR2(2000),
  DATE_THAT_WORK_WILL_START             NVARCHAR2(2000),
  LATEST_PAYMENT_DATE                   NVARCHAR2(2000),
  START_DATE                            NVARCHAR2(2000),
  SUBMISSION_DATE                       NVARCHAR2(2000),
  PRODUCT                               NVARCHAR2(2000),
  PRODUCT_NAME                          NVARCHAR2(2000),
  PRODUCT_COUNT                         NVARCHAR2(2000),
  PRODUCT_COUNT_BY_TRANS                NVARCHAR2(2000),
  TRANSACTION_ID                        NVARCHAR2(2000),
  TRANSACTION_TYPE                      NVARCHAR2(2000),
  ASSIGNED_TO_GUID                      NVARCHAR2(2000),
  RECONCILED_BY_GUID                    NVARCHAR2(2000),
  INITIATOR_GUID                        NVARCHAR2(2000),
  PROJECT_OWNER_GUID                    NVARCHAR2(2000),
  DPT_DIVISION_DEPT                     NVARCHAR2(2000),
  BU                                    NVARCHAR2(2000),
  SUB_BU                                NVARCHAR2(2000),
  IS_MEDICAL                            NVARCHAR2(2000),
  MDM_HASH                              NVARCHAR2(2000),
  COST                                  NVARCHAR2(2000),
  LEGAL_THRESHOLD                       NVARCHAR2(2000),
  ORG_ID                                NVARCHAR2(2000),
  EPAY_NUMBER_CONCAT                    NVARCHAR2(2000),
  INVOICE_NUMBER_CONCAT                 NVARCHAR2(2000),
  PAYMENT_DATE_CONCAT                   NVARCHAR2(2000),
  EPAY_AMOUNT                           NVARCHAR2(2000),
  EPAY_AMOUNT_USD                       NVARCHAR2(2000),
  FMV                                   NVARCHAR2(2000),
  FMV_USD                               NVARCHAR2(2000),
  PAYMENT_EXPLANATION                   NVARCHAR2(2000),
  MEAL_COST                             NVARCHAR2(2000),
  MEAL_COST_USD                         NVARCHAR2(2000),
  AIRFARE_COST                          NVARCHAR2(2000),
  AIRFARE_COST_USD                      NVARCHAR2(2000),
  HOTEL_COST                            NVARCHAR2(2000),
  HOTEL_COST_USD                        NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST                  NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST_USD              NVARCHAR2(2000),
  REGISTRATION_FEE                      NVARCHAR2(2000),
  REGISTRATION_FEE_USD                  NVARCHAR2(2000),
  CREATED_DATETIME                      NVARCHAR2(2000),
  RECONCILIATION                        NVARCHAR2(2000),
  RECONCILIATION_USD                    NVARCHAR2(2000),
  FMV_USD_APPORTIONED                   NVARCHAR2(2000),
  FMV_APPORTIONED                       NVARCHAR2(2000),
  EPAY_APPORTIONED                      NVARCHAR2(2000),
  EPAY_USD_APPORTIONED                  NVARCHAR2(2000),
  MEAL_COST_APPORTIONED                 NVARCHAR2(2000),
  AIRFARE_COST_APPORTIONED              NVARCHAR2(2000),
  HOTEL_COST_APPORTIONED                NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST_APPORTIONED      NVARCHAR2(2000),
  REGISTRATION_FEE_APPORTIONED          NVARCHAR2(2000),
  MEAL_COST_USD_APPORTIONED             NVARCHAR2(2000),
  AIRFARE_COST_USD_APPORTIONED          NVARCHAR2(2000),
  HOTEL_COST_USD_APPORTIONED            NVARCHAR2(2000),
  GROUND_TRNSPRTN_COST_USD_APPORTIONED  NVARCHAR2(2000),
  REGISTRATION_FEE_USD_APPORTIONED      NVARCHAR2(2000),
  RECONCILIATION_APPORTIONED            NVARCHAR2(2000),
  RECONCILIATION_USD_APPORTIONED        NVARCHAR2(2000),
  TOTAL                                 NVARCHAR2(2000),
  TOTAL_APPORTIONED                     NVARCHAR2(2000),
  TOTAL_USD                             NVARCHAR2(2000),
  TOTAL_USD_APPORTIONED                 NVARCHAR2(2000),
  TRANSACTION_AMOUNT                    NVARCHAR2(2000),
  TRANSACTION_AMOUNT_USD                NVARCHAR2(2000),
  IS_BACKUP                             NVARCHAR2(2000),
  ATTENDED                              NVARCHAR2(2000),
  STATUS_DESCRIPTION                    NVARCHAR2(2000),
  CLUSTERR                              NVARCHAR2(2000),
  PENDING_PAYMENT                       NVARCHAR2(2000),
  PENDING_PAYMENT_USD                   NVARCHAR2(2000),
  EXECUTED_PAYMENT                      NVARCHAR2(2000),
  EXECUTED_PAYMENT_USD                  NVARCHAR2(2000),
  EPAY_USD_APPORTIONED_PAID             NVARCHAR2(2000),
  GROUND_USD_PAID_APPORTIONED           NVARCHAR2(2000),
  HOTEL_USD_PAID_APPORTIONED            NVARCHAR2(2000),
  AIRFARE_USD_PAID_APPORTIONED          NVARCHAR2(2000),
  MEAL_USD_PAID_APPORTIONED             NVARCHAR2(2000),
  REGISTRATION_USD_PAID_APPORTIONED     NVARCHAR2(2000),
  HOTELCHARGE                           NVARCHAR2(2000),
  AIRFARECHARGE                         NVARCHAR2(2000),
  GROUNDCHARGE                          NVARCHAR2(2000),
  MEALCHARGE                            NVARCHAR2(2000),
  REGISTRATIONCHARGE                    NVARCHAR2(2000),
  COUNTRY_HOST                          NVARCHAR2(2000),
  CONSULTANCY_TYPE                      NVARCHAR2(2000),
  CONSULTANCY_CAP                       NVARCHAR2(2000),
  GO                                    NVARCHAR2(2000),
  PIGO                                  NVARCHAR2(2000),
  NIPPIGO                               NVARCHAR2(2000),
  EVENT_ATTENDED                        NVARCHAR2(2000),
  EXTRACT_DATE                          NVARCHAR2(2000),
  LOAD_SEQ_NUM                          NVARCHAR2(2000),
  LOAD_DATE                             NVARCHAR2(2000),
  ATLASROWID                            NVARCHAR2(2000),
  CREATED_DATE                          VARCHAR2(1000 BYTE),
  CREATED_BY                            VARCHAR2(1000 BYTE),
  MODIFIED_DATE                         VARCHAR2(1000 BYTE),
  MODFIED_BY                            VARCHAR2(1000 BYTE)
);


CREATE OR REPLACE PUBLIC SYNONYM POL_UDH_INTRM_LND_MAPP_HCP_TRANSACTIONS_STD FOR KOL_IB_OWNER.POL_UDH_INTRM_LND_MAPP_HCP_TRANSACTIONS_STD;




