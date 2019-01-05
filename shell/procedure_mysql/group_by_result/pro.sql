delimiter // 
drop procedure if exists pr_add;
create procedure pr_add (a int,b int)
begin
	declare c int;
	if a is null then
		set a = 0;
	end if;
	if b is null then
		set b = 0;
	end if;
	set c = a + b;
	select c as sum;
end
//
DELIMITER ;
