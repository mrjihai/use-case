
REPLACE VIEW retail_sample_data.All_Divisions as 
SELECT
AllDivisionsCd,
AllDivisionsName
FROM retail_sample_data.All_Divisions_parquet_ft;

REPLACE VIEW retail_sample_data.Associate as 
SELECT
AssociatePartyId,
ManagerAssociateId,
AssociateFirstName,
AssociateLastName,
AssociateMiddleName,
PositionId,
StoreLocId,
AssocHRNum,
AssocHireDt,
AssocTerminationDt
FROM retail_sample_data.Associate_parquet_ft;

REPLACE VIEW retail_sample_data.Brand as 
SELECT
mfg,
BrandID,
BrandName
FROM retail_sample_data.Brand_parquet_ft;

REPLACE VIEW retail_sample_data.Business_Calendar as 
SELECT
CalendarDate,
CalendarType,
LYDate,
LYYearID,
YearID,
QuarterID,
MonthID,
WeekID,
DayofYear,
DayofQuarter,
DayofMonth,
DayofWeek,
WeekofYear,
WeekofMonth,
MonthofYear,
WeekofCalendar,
MonthofCalendar,
QuarterofCalendar,
YearofCalendar,
YRBegDt,
YREndDt,
QtrBegDt,
QtrEndDt,
MoBegDt,
MoEndDt,
WkBegDt,
WkEndDt,
LWWeekID,
LWDate,
LMMonthID,
LMDate,
LQQuarterID,
LQDate,
dssupdatetime
FROM retail_sample_data.Business_Calendar_parquet_ft;

REPLACE VIEW retail_sample_data.Category as 
SELECT
CategoryID,
CategoryDesc,
DeptID,
dssupdatetime
FROM retail_sample_data.Category_parquet_ft;

REPLACE VIEW retail_sample_data.Course as 
SELECT
CourseCD,
CourseTitle,
CourseCreditHours,
CourseTuition,
CourseCost,
dssupdatetime
FROM retail_sample_data.Course_parquet_ft;

REPLACE VIEW retail_sample_data.customer as 
SELECT
IndividualPartyId,
BirthDt,
EthnicityCd,
GenderTypeCd,
GivenName,
MiddleName,
FamilyName,
NamePrefixTxt,
NameSuffixTxt,
streetaddress,
city,
statecode,
zipcode,
dssupdatetime
FROM retail_sample_data.customer_parquet_ft;

REPLACE VIEW retail_sample_data.Department as 
SELECT
DeptID,
DeptName,
dssupdatetime
FROM retail_sample_data.Department_parquet_ft;

REPLACE VIEW retail_sample_data.DISTRICT as 
SELECT
DistrictCd,
DistrictName,
RegionCd,
DistrictMgrAssociateId,
dssupdatetime
FROM retail_sample_data.DISTRICT_parquet_ft;

REPLACE VIEW retail_sample_data.DIVISION as 
SELECT
DivisionCd,
DivisionName,
OrgPartyId,
AllDivisionsCd,
DivisionMgrAssociateId,
dssupdatetime
FROM retail_sample_data.DIVISION_parquet_ft;

REPLACE VIEW retail_sample_data.item_inventory as 
SELECT
LocationId,
ItemInvDt,
ItemId,
OnHandUnitQty,
OnHandAtRetailAmt,
OnHandCostAmt,
OnOrderQty,
LostSalesDayInd,
ItemInvTime
FROM retail_sample_data.item_inventory_parquet_ft;

REPLACE VIEW retail_sample_data.ITEM_SIZE as 
SELECT
ItemSizeCD,
ItemSize,
dssupdatetime
FROM retail_sample_data.ITEM_SIZE_parquet_ft;

REPLACE VIEW retail_sample_data.ITEM as 
SELECT
ItemID,
SubCategoryID,
ItemSKU,
ItemDesc,
ItemName,
InventoryIND,
VendorPartyID,
CommodityCD,
ItemColorCD,
ItemSizeCD,
BrandID,
dssupdatetime
FROM retail_sample_data.ITEM_parquet_ft;

REPLACE VIEW retail_sample_data.LOCATION as 
SELECT
LocationId,
LocationName,
Address1,
Address2,
Zipcode,
LocationOpenDt,
LocationCloseDt,
LocationEffectiveDt,
LocationTotalAreaMeas,
ChainCd,
ChannelCd,
DistrictCd,
ParentLocationId,
LocationMgrAssociateId,
LocationTypeCd,
dssupdatetime
FROM retail_sample_data.LOCATION_parquet_ft;

REPLACE VIEW retail_sample_data.PROMO_OFFER_TYPE as 
SELECT
PromoOfferTypeCD,
PromoOfferTypeDesc,
dssupdatetime
FROM retail_sample_data.PROMO_OFFER_TYPE_parquet_ft;

REPLACE VIEW retail_sample_data.PROMO_OFFER as 
SELECT
PromoOfferID,
PromoOfferDesc,
PromoOfferStartDate,
PromoOfferEndDate,
PromoOfferTypeCD,
PromoID,
dssupdatetime
FROM retail_sample_data.PROMO_OFFER_parquet_ft;

REPLACE VIEW retail_sample_data.PROMOTION as 
SELECT
PromoID,
PromoDesc,
dssupdatetime
FROM retail_sample_data.PROMOTION_parquet_ft;

REPLACE VIEW retail_sample_data.REGION as 
SELECT
RegionCd,
RegionName,
DivisionCd,
RegionMgrAssociateId,
dssupdatetime
FROM retail_sample_data.REGION_parquet_ft;

REPLACE VIEW retail_sample_data.sales_transaction_line as 
SELECT
SalesTranId,
SalesTranLineNum,
ItemId,
ItemQty,
UnitSellingPriceAmt,
UnitCostAmt,
TranLineStatusCd,
SalesTranLineStartDttm,
TranLineSalesTypeCd,
SalesTranLineEndDttm,
TranLineDate,
locationid,
dssupdatetime
FROM retail_sample_data.sales_transaction_line_parquet_ft;

REPLACE VIEW retail_sample_data.SALES_TRANSACTION_TYPE as 
SELECT
SalesTransactionTypeCd,
SalesTransactionTypeDesc,
dssupdatetime
FROM retail_sample_data.SALES_TRANSACTION_TYPE_parquet_ft;

REPLACE VIEW retail_sample_data.sales_transaction as 
SELECT
SalesTranId,
VisitId,
locationid,
TranStatusCd,
ReportedAsDttm,
TranTypeCd,
MKBCostAmt,
MKBItemQty,
MKBNumberUniqueItemsQty,
MKBRevAmt,
SalesAssociateId,
individualpartyid,
TranStartDttmDD,
TranDate,
TranEndDttmDD,
dssupdatetime
FROM retail_sample_data.sales_transaction_parquet_ft;

REPLACE VIEW retail_sample_data.Stores as 
SELECT
STORE_ID,
STORE_NAME,
ADDRESS,
CUR_INV_OH,
YTD_SALES,
YTD_COGS,
YTD_AVG_INV,
YTD_INV_TURNS,
STORE_MGR,
STORE_CONTACT
FROM retail_sample_data.Stores_parquet_ft;

REPLACE VIEW retail_sample_data.SUBCATEGORY as 
SELECT
SubCategoryID,
SubCategoryDesc,
CategoryID,
dssupdatetime
FROM retail_sample_data.SUBCATEGORY_parquet_ft;

REPLACE VIEW retail_sample_data.zipcodes as 
SELECT
zipcode,
longitude,
latitude,
city,
state,
county,
dssupdatetime
FROM retail_sample_data.zipcodes_parquet_ft;
