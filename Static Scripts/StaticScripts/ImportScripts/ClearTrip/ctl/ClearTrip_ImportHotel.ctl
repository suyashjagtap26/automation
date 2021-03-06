LOAD DATA 
INFILE '/tmp/Static/StaticScripts/ImportScripts/ClearTrip/ctl/extapi-hotels.bad'
APPEND INTO TABLE STATICDATA_ACCO 
FIELDS TERMINATED BY ',' optionally enclosed by '"'
trailing nullcols
(
SUPPLIER_ID CONSTANT 'CLEARTRIP',
SUPPLIER_NAME CONSTANT 'ClearTrip',
PRODUCT_ID CHAR(800),
PRODUCT_NAME CHAR(1000),
CITY_CODE CHAR(1000),
STATE FILLER,
COUNTRY_CODE CHAR(1000),
ZIP FILLER,
LOCATION CHAR(1000),
ADDRESS CHAR(2000),
STAR_RATING FILLER,
LATITUDE FILLER,
LONGITUDE FILLER,
PROPERTY_TYPE FILLER,
TELEPHONE_NUMBER CHAR(800),
EMAIL FILLER,
FAX FILLER, 
WEBSITE FILLER CHAR(4000),
DESCRIPTION FILLER CHAR(10000),
BASIC_AMENITIES FILLER CHAR(8000),
IMAGE_URLS FILLER CHAR(10000) 
)