DROP TABLE retail_sample_data.All_Divisions_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.All_Divisions_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      AllDivisionsCd SMALLINT,
      AllDivisionsName VARCHAR(27) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/All_Divisions_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.All_Divisions_parquet_ft;

DROP TABLE retail_sample_data.Associate_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.Associate_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      AssociatePartyId SMALLINT,
      ManagerAssociateId BYTEINT,
      AssociateFirstName VARCHAR(20) CHARACTER SET UNICODE NOT CASESPECIFIC,
      AssociateLastName VARCHAR(20) CHARACTER SET UNICODE NOT CASESPECIFIC,
      AssociateMiddleName BYTEINT,
      PositionId BYTEINT,
      StoreLocId BYTEINT,
      AssocHRNum BYTEINT,
      AssocHireDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      AssocTerminationDt VARCHAR(11) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/Associate_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.Associate_parquet_ft;

DROP TABLE retail_sample_data.Brand_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.Brand_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      mfg BYTEINT,
      BrandID BYTEINT,
      BrandName VARCHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/Brand_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.Brand_parquet_ft;

DROP TABLE retail_sample_data.Business_Calendar_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.Business_Calendar_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      CalendarDate VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      CalendarType CHAR(6) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LYDate VARCHAR(19) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LYYearID SMALLINT,
      YearID SMALLINT,
      QuarterID SMALLINT,
      MonthID INTEGER,
      WeekID INTEGER,
      DayofYear SMALLINT,
      DayofQuarter BYTEINT,
      DayofMonth BYTEINT,
      DayofWeek BYTEINT,
      WeekofYear BYTEINT,
      WeekofMonth BYTEINT,
      MonthofYear BYTEINT,
      WeekofCalendar SMALLINT,
      MonthofCalendar SMALLINT,
      QuarterofCalendar BYTEINT,
      YearofCalendar SMALLINT,
      YRBegDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      YREndDt DATE FORMAT 'MM/DD/Y4',
      QtrBegDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      QtrEndDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      MoBegDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      MoEndDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      WkBegDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      WkEndDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LWWeekID VARCHAR(11) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LWDate VARCHAR(19) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LMMonthID VARCHAR(11) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LMDate VARCHAR(19) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LQQuarterID VARCHAR(9) CHARACTER SET UNICODE NOT CASESPECIFIC,
      LQDate VARCHAR(19) CHARACTER SET UNICODE NOT CASESPECIFIC,
      dssupdatetime VARCHAR(13) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/Business_Calendar_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.Business_Calendar_parquet_ft;

DROP TABLE retail_sample_data.Category_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.Category_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      CategoryID SMALLINT,
      CategoryDesc VARCHAR(57) CHARACTER SET UNICODE NOT CASESPECIFIC,
      DeptID BYTEINT,
      dssupdatetime CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/Category_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.Category_parquet_ft;

DROP TABLE retail_sample_data.Course_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.Course_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      CourseCD VARCHAR(15) CHARACTER SET UNICODE NOT CASESPECIFIC,
      CourseTitle VARCHAR(98) CHARACTER SET UNICODE NOT CASESPECIFIC,
      CourseCreditHours BYTEINT,
      CourseTuition BYTEINT,
      CourseCost INTEGER,
      dssupdatetime CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/Course_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.Course_parquet_ft;

DROP TABLE retail_sample_data.customer_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.customer_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      IndividualPartyId SMALLINT,
      BirthDt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      EthnicityCd CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      GenderTypeCd CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      GivenName VARCHAR(20) CHARACTER SET UNICODE NOT CASESPECIFIC,
      MiddleName VARCHAR(19) CHARACTER SET UNICODE NOT CASESPECIFIC,
      FamilyName VARCHAR(30) CHARACTER SET UNICODE NOT CASESPECIFIC,
      NamePrefixTxt BYTEINT,
      NameSuffixTxt BYTEINT,
      streetaddress VARCHAR(62) CHARACTER SET UNICODE NOT CASESPECIFIC,
      city VARCHAR(43) CHARACTER SET UNICODE NOT CASESPECIFIC,
      statecode CHAR(2) CHARACTER SET UNICODE NOT CASESPECIFIC,
      zipcode INTEGER,
      dssupdatetime VARCHAR(13) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/customer_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.customer_parquet_ft;

DROP TABLE retail_sample_data.Department_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.Department_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      DeptID BYTEINT,
      DeptName VARCHAR(42) CHARACTER SET UNICODE NOT CASESPECIFIC,
      dssupdatetime VARCHAR(13) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/Department_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.Department_parquet_ft;

DROP TABLE retail_sample_data.DISTRICT_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.DISTRICT_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      DistrictCd SMALLINT,
      DistrictName VARCHAR(27) CHARACTER SET UNICODE NOT CASESPECIFIC,
      RegionCd VARCHAR(9) CHARACTER SET UNICODE NOT CASESPECIFIC,
      DistrictMgrAssociateId BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/DISTRICT_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.DISTRICT_parquet_ft;

DROP TABLE retail_sample_data.DIVISION_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.DIVISION_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      DivisionCd VARCHAR(9) CHARACTER SET UNICODE NOT CASESPECIFIC,
      DivisionName VARCHAR(5) CHARACTER SET UNICODE NOT CASESPECIFIC,
      OrgPartyId BYTEINT,
      AllDivisionsCd SMALLINT,
      DivisionMgrAssociateId BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/DIVISION_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.DIVISION_parquet_ft;

DROP TABLE retail_sample_data.item_inventory_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.item_inventory_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      LocationId SMALLINT,
      ItemInvDt DATE FORMAT 'Y4/MM/DD',
      ItemId BIGINT,
      OnHandUnitQty BYTEINT,
      OnHandAtRetailAmt DECIMAL(5,4),
      OnHandCostAmt DECIMAL(5,4),
      OnOrderQty BYTEINT,
      LostSalesDayInd BYTEINT,
      ItemInvTime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/item_inventory_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.item_inventory_parquet_ft;

DROP TABLE retail_sample_data.ITEM_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.ITEM_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      ItemID BIGINT,
      SubCategoryID SMALLINT,
      ItemSKU CHAR(20) CHARACTER SET UNICODE NOT CASESPECIFIC,
      ItemDesc VARCHAR(64) CHARACTER SET UNICODE NOT CASESPECIFIC,
      ItemName VARCHAR(64) CHARACTER SET UNICODE NOT CASESPECIFIC,
      InventoryIND CHAR(3) CHARACTER SET UNICODE NOT CASESPECIFIC,
      VendorPartyID BYTEINT,
      CommodityCD BYTEINT,
      ItemColorCD SMALLINT,
      ItemSizeCD SMALLINT,
      BrandID BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/ITEM_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.ITEM_parquet_ft;

DROP TABLE retail_sample_data.ITEM_SIZE_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.ITEM_SIZE_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      ItemSizeCD SMALLINT,
      ItemSize VARCHAR(15) CHARACTER SET UNICODE NOT CASESPECIFIC,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/ITEM_SIZE_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.ITEM_SIZE_parquet_ft;

DROP TABLE retail_sample_data.LOCATION_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.LOCATION_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      LocationId SMALLINT,
      LocationName VARCHAR(26) CHARACTER SET UNICODE NOT CASESPECIFIC,
      Address1 VARCHAR(56) CHARACTER SET UNICODE NOT CASESPECIFIC,
      Address2 BYTEINT,
      Zipcode INTEGER,
      LocationOpenDt DATE FORMAT 'Y4/MM/DD',
      LocationCloseDt BYTEINT,
      LocationEffectiveDt DATE FORMAT 'Y4/MM/DD',
      LocationTotalAreaMeas FLOAT,
      ChainCd BYTEINT,
      ChannelCd BYTEINT,
      DistrictCd SMALLINT,
      ParentLocationId BYTEINT,
      LocationMgrAssociateId BYTEINT,
      LocationTypeCd BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/LOCATION_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.LOCATION_parquet_ft;

DROP TABLE retail_sample_data.PROMO_OFFER_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.PROMO_OFFER_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      PromoOfferID SMALLINT,
      PromoOfferDesc VARCHAR(64) CHARACTER SET UNICODE NOT CASESPECIFIC,
      PromoOfferStartDate DATE FORMAT 'Y4/MM/DD',
      PromoOfferEndDate DATE FORMAT 'Y4/MM/DD',
      PromoOfferTypeCD CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      PromoID BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/PROMO_OFFER_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.PROMO_OFFER_parquet_ft;

DROP TABLE retail_sample_data.PROMO_OFFER_TYPE_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.PROMO_OFFER_TYPE_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      PromoOfferTypeCD CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      PromoOfferTypeDesc VARCHAR(41) CHARACTER SET UNICODE NOT CASESPECIFIC,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/PROMO_OFFER_TYPE_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.PROMO_OFFER_TYPE_parquet_ft;

DROP TABLE retail_sample_data.PROMOTION_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.PROMOTION_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      PromoID BYTEINT,
      PromoDesc VARCHAR(41) CHARACTER SET UNICODE NOT CASESPECIFIC,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/PROMOTION_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.PROMOTION_parquet_ft;

DROP TABLE retail_sample_data.REGION_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.REGION_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      RegionCd VARCHAR(9) CHARACTER SET UNICODE NOT CASESPECIFIC,
      RegionName VARCHAR(23) CHARACTER SET UNICODE NOT CASESPECIFIC,
      DivisionCd VARCHAR(9) CHARACTER SET UNICODE NOT CASESPECIFIC,
      RegionMgrAssociateId BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/REGION_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.REGION_parquet_ft;

DROP TABLE retail_sample_data.sales_transaction_line_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.sales_transaction_line_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      SalesTranId INTEGER,
      SalesTranLineNum SMALLINT,
      ItemId BIGINT,
      ItemQty SMALLINT,
      UnitSellingPriceAmt DECIMAL(7,4),
      UnitCostAmt DECIMAL(7,4),
      TranLineStatusCd CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      SalesTranLineStartDttm TIMESTAMP(6) FORMAT 'Y4-MM-DDBHH:MI:SSDS(6)',
      TranLineSalesTypeCd CHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      SalesTranLineEndDttm TIMESTAMP(6) FORMAT 'Y4-MM-DDBHH:MI:SSDS(6)',
      TranLineDate DATE FORMAT 'Y4/MM/DD',
      locationid SMALLINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/sales_transaction_line_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.sales_transaction_line_parquet_ft;

DROP TABLE retail_sample_data.sales_transaction_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.sales_transaction_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      SalesTranId INTEGER,
      VisitId BYTEINT,
      locationid SMALLINT,
      TranStatusCd CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      ReportedAsDttm TIMESTAMP(0) FORMAT 'Y4-MM-DDBHH:MI:SS',
      TranTypeCd CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      MKBCostAmt VARCHAR(14) CHARACTER SET UNICODE NOT CASESPECIFIC,
      MKBItemQty SMALLINT,
      MKBNumberUniqueItemsQty SMALLINT,
      MKBRevAmt VARCHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC,
      SalesAssociateId SMALLINT,
      individualpartyid INTEGER,
      TranStartDttmDD VARCHAR(27) CHARACTER SET UNICODE NOT CASESPECIFIC,
      TranDate DATE FORMAT 'Y4/MM/DD',
      TranEndDttmDD TIMESTAMP(0) FORMAT 'Y4-MM-DDBHH:MI:SS',
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/sales_transaction_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.sales_transaction_parquet_ft;

DROP TABLE retail_sample_data.SALES_TRANSACTION_TYPE_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.SALES_TRANSACTION_TYPE_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      SalesTransactionTypeCd CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC,
      SalesTransactionTypeDesc VARCHAR(99) CHARACTER SET UNICODE NOT CASESPECIFIC,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/SALES_TRANSACTION_TYPE_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.SALES_TRANSACTION_TYPE_parquet_ft;

DROP TABLE retail_sample_data.STORES_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.STORES_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      STORE_ID SMALLINT,
      STORE_NAME VARCHAR(40) CHARACTER SET UNICODE NOT CASESPECIFIC,
      ADDRESS VARCHAR(85) CHARACTER SET UNICODE NOT CASESPECIFIC,
      CUR_INV_OH INTEGER,
      YTD_SALES INTEGER,
      YTD_COGS INTEGER,
      YTD_AVG_INV INTEGER,
      YTD_INV_TURNS BYTEINT,
      STORE_MGR CHAR(9) CHARACTER SET UNICODE NOT CASESPECIFIC,
      STORE_CONTACT CHAR(12) CHARACTER SET UNICODE NOT CASESPECIFIC)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/STORES_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX
PARTITION BY COLUMN ADD 65287;


select count(*) from retail_sample_data.Stores_parquet_ft;

DROP TABLE retail_sample_data.SUBCATEGORY_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.SUBCATEGORY_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      SubCategoryID SMALLINT,
      SubCategoryDesc VARCHAR(63) CHARACTER SET UNICODE NOT CASESPECIFIC,
      CategoryID SMALLINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/SUBCATEGORY_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.SUBCATEGORY_parquet_ft;

DROP TABLE retail_sample_data.zipcodes_parquet_ft;

CREATE MULTISET FOREIGN TABLE retail_sample_data.zipcodes_parquet_ft ,FALLBACK ,
     EXTERNAL SECURITY DEFINER TRUSTED DEMO_AUTH_NOS ,
     MAP = TD_MAP1
     (
      Location VARCHAR(2048) CHARACTER SET UNICODE CASESPECIFIC,
      zipcode CHAR(5) CHARACTER SET UNICODE NOT CASESPECIFIC,
      longitude DECIMAL(6,4),
      latitude DECIMAL(7,4),
      city VARCHAR(49) CHARACTER SET UNICODE NOT CASESPECIFIC,
      state CHAR(2) CHARACTER SET UNICODE NOT CASESPECIFIC,
      county BYTEINT,
      dssupdatetime BYTEINT)
USING
(
      LOCATION  ('/s3/s3.amazonaws.com/alpha-data-store-td/retail_sample_data/parquet/zipcodes_gz/')
      MANIFEST  ('FALSE')
      PATHPATTERN  ('$alpha_admin_data_copy/$varchar2/$retail_sample_data/$filename')
      STOREDAS  ('PARQUET')
)
NO PRIMARY INDEX 
PARTITION BY COLUMN ADD 65287;



select count(*) from retail_sample_data.zipcodes_parquet_ft;

