
LOAD DATA
INFILE '/tmp/Static/Inbound/Accomodation/Miki/MikiCountry.csv'
APPEND INTO TABLE STATICDATA_COUNTRY
FIELDS TERMINATED BY ',' optionally enclosed by '"'
trailing nullcols
(
SUPPLIER_ID CONSTANT 'MIKI ',
SUPPLIER_NAME CONSTANT 'Miki',
PRODUCT_ID FILLER,
CITY_CODE FILLER,
CITY_NAME FILLER,
COUNTRY_ BOUNDFILLER,
COUNTRY_CODE "upper(:COUNTRY_)",
COUNTRY_NAME "upper(:COUNTRY_)",
ADDRESS FILLER,
D FILLER,
E FILLER,
F FILLER,
G FILLER,
TELEPHONE_NUMBER FILLER,
H FILLER
)







