LOAD DATA
INFILE '/tmp/Static/Inbound/Cruise/StarCruise/StarCruise_ImportCabin.csv'
APPEND INTO TABLE STATICDATA_CRUISE_CABIN_DET
FIELDS TERMINATED BY ',' optionally enclosed by '"'
trailing nullcols
(
SUPPLIER_ID CONSTANT 'STARCRUISE',
SUPPLIER_NAME CONSTANT 'StarCruise',
SHIP_ID,
CABIN_CODE,
CABIN_DESCRIPTION char(8000)
)