drop procedure if EXISTS  jituany ;

delimiter //


-- set curs@:='SELECT  kjly  FROM fpmx1018 where XHDWDM like 'shuih%' group by kjly';

create procedure jituany(in lnum int,in fpcl char(20)) -- 创建存储过程
begin -- 开始存储过程
declare fpcl_lv varchar(20); -- 自定义变量1
declare str00 varchar(20);
DECLARE done INT DEFAULT FALSE; -- 自定义控制游标循环变量,默认false








set @a:=(select count(*) from fpmx1018 where XHDWDM like 'shuih%');

set @b:=(select count(*)   from fpmx1018 where (xhdwdm like 'shuih%' ) and ( province_code  regexp '[^0-9]'  or city_code   regexp '[^0-9]' or kpd  not   regexp '^[A-Za-z0-9-_]+$'  or kjly not in ('YY','WT','ZT','SG','ZZ','SF','PD','TY','YX') or xzqd not in ('YC','YJ','YD','UJ','UC','UD','UZ','XW','NULL'))) ;




select concat(@b,',',round(@b*100/@a,2),'%',',',@a);








END; -- 结束存储过程






//
delimiter ;


-- select "tt","99" from fpmx1018 limit 1;
call jituany(3,'kjly');

-- call jituany(5,'xzqd');







