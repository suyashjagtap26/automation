
LOAD DATA 
INFILE '/tmp/Static/Inbound/Accomodation/Pacto/PactoCity.csv'
APPEND INTO TABLE STATICDATA_CITY
FIELDS TERMINATED BY ',' optionally enclosed by '"'
(
SUPPLIER_ID CONSTANT 'PACTO',
SUPPLIER_NAME CONSTANT 'Pacto',
CITY_CODE,
CITY_NAME,
COUNTRY_CODE,
COUNTRY_NAME
)







