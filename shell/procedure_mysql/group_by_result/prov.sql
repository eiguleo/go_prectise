drop procedure if EXISTS  tptop ;

delimiter //


-- set curs@:='SELECT  kjly  FROM fpmx1018 where XHDWDM like 'shuih%' group by kjly';

create procedure tptop(in lnum int,in fpcl char(20)) -- 创建存储过程
begin -- 开始存储过程
declare fpcl_lv varchar(20); -- 自定义变量1
declare str00 varchar(20);
DECLARE done INT DEFAULT FALSE; -- 自定义控制游标循环变量,默认false



-- repeate loop
DECLARE My_Cursor CURSOR FOR  SELECT  province_code  FROM fpmx1018 where XHDWDM like 'shuih%' group by province_code order by province_code desc; -- 定义游标并输入结果集
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; -- 绑定控制变量到游标,游标循环结束自动转true


-- select fpcl;
-- set @sqll=concat('select ',fpcl,'  from fpmx1018 limit 2');
-- prepare stmt from @sqll;
-- select @sqll;
-- execute stmt;


set @a:=(select count(*) from fpmx1018 where XHDWDM like 'shuih%');
select concat('统计样本数量:',@a);




OPEN My_Cursor; -- 打开游标
  myLoop: LOOP -- 开始循环体,myLoop为自定义循环名,结束循环时用到
      FETCH My_Cursor into fpcl_lv; -- 将游标当前读取行的数据顺序赋予自定义变量12
          IF done THEN -- 判断是否继续循环
	        LEAVE myLoop; -- 结束循环
		    END IF;
		        -- 自己要做的事情,在 sql 中直接使用自定义变量即可
			-- UPDATE t_user SET c_name = my_name WHERE id = my_id and rtrim(ltrim(c_name)) = ''; -- 左右去空格
			-- set @sqll=concat('select ',fpcl,', xhdwmc,fpqqlsh,fphm,fpdm from fpmx1018 where ',fpcl,'=','''',fpcl_lv,'''', ' and XHDWDM like ','''',  'shuih%',  '''',          ' limit ', lnum);
			set @sqll=concat('select ',fpcl ,',concat(round(100*count(*)/','@a,2),', '''', '%', '''' ,')' ,', count(*),', 'xhdwmc,fpqqlsh,fphm,fpdm from fpmx1018 where ', fpcl,'=','''',fpcl_lv,'''', ' and XHDWDM like ','''','shuih%'  ,''''    ,' limit ',lnum);
			-- select XHDWMC,kjly,fpqqlsh from fpmx1018 where kjly=fpcl_lv limit lnum;
			prepare stmt from @sqll;
			-- select @sqll;
			execute stmt;

    COMMIT; -- 提交事务
      END LOOP myLoop; -- 结束自定义循环体
        CLOSE My_Cursor;-- 关闭游标


END; -- 结束存储过程






//
delimiter ;


-- select "tt","99" from fpmx1018 limit 1;
call tptop(1,'province_code');

-- call tptop(5,'xzqd');







