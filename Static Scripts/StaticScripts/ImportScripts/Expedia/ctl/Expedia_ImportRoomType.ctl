OPTIONS (SKIP=1)
LOAD DATA
CHARACTERSET UTF8 
INFILE '/tmp/Static/Inbound/Accomodation/Expedia/RoomTypeList.txt'
APPEND INTO TABLE STATICDATA_ACCO_ROOMTYPE
FIELDS TERMINATED BY '|' optionally enclosed by '"'
Trailing nullcols
(
SUPPLIER_ID CONSTANT 'EXPEDIA',
SUPPLIER_NAME CONSTANT 'Expedia',
PRODUCT_ID,
ROOMID,
LANGCODE FILLER,
ROOMTYPEIMAGE FILLER,
ROOM_NAME,
ROOM_DESCRIPTION CHAR(4000),
ROOMTYPECODE CONSTANT '-',
ROOMTYPECATEGORYID CONSTANT '-'
)