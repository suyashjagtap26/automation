LOAD DATA
CHARACTERSET WE8ISO8859P1
INFILE '/tmp/Static/Inbound/Accomodation/TheTraveller/TheTravellerCity.csv'
APPEND INTO TABLE STATICDATA_CITY 
FIELDS TERMINATED BY ',' optionally enclosed by '"'
trailing nullcols
(
SUPPLIER_ID CONSTANT 'THETRAVELLER',
SUPPLIER_NAME CONSTANT 'TheTraveller',
A FILLER,
PRODUCT_ID FILLER,
ADDRESS FILLER CHAR(4000),
TELEPHONE_NUMBER FILLER,
B FILLER,
C FILLER,
D FILLER CHAR (4000),
COUNTRY_CODE,
COUNTRY_NAME,
CITY_CODE,
CITY_NAME,
F FILLER,
G FILLER,
H FILLER,
I FILLER
)







