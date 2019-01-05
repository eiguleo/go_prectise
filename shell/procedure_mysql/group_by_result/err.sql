 select XHDWMC, XHDWDM, PROVINCE_CODE, CITY_CODE, KPD, KJLY, XZRQ, XZQD from fpmx0907 \
 where \
 (PROVINCE_CODE='' or PROVINCE_CODE is null ) or (CITY_CODE = '' or CITY_CODE is null ) or (KPD = '' or KPD is null) or ( KJLY = '' or KJLY is null) or ( XZQD = '' or XZQD is null)  or ( XZRQ = '' or XZRQ is null ) \

group by 






limit 1;
