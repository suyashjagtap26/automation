OPTIONS (SKIP=1,readsize=1999999999,errors=999999)
LOAD DATA
CHARACTERSET WE8ISO8859P1
INFILE '/tmp/Static/backup/Accomodation/ClearTrip/extapi-hotels.csv'
CONTINUEIF LAST !='"'
INTO TABLE STATICDATA_CITY
APPEND
FIELDS TERMINATED BY ',' optionally enclosed by '"'
trailing nullcols
(
SUPPLIER_ID CONSTANT 'CLEARTRIP',
SUPPLIER_NAME CONSTANT 'ClearTrip',
PRODUCT_ID FILLER,
PRODUCT_NAME FILLER,
CITY_C BOUNDFILLER,
STATE_NAME,
COUNTRY_CODE,
POSTAL_CODE FILLER,
LOCATION FILLER,
STREET1 FILLER CHAR(800),
STAR_RATING FILLER,
LATITUDE FILLER,
LONGITUDE FILLER,
PROPERTY_TYPE FILLER,
TELEPHONE_NUMBER FILLER,
EMAIL FILLER,
FAX FILLER,
WEBSITE FILLER CHAR(500),
DESCRIPTION FILLER CHAR(40000),
BASIC_AMENITIES FILLER CHAR(500),
IMAGE_URLS FILLER CHAR(40000),
CITY_CODE ":CITY_C",
CITY_NAME ":CITY_C"
)