/*drop procedure if exists pro1;
delimiter $
create procedure pro()
begin
   select "hello world";
end $
delimiter ;


drop procedure if exists pro;
delimiter $
create procedure pro()
begin
  declare x int default 12;
  select x;
end $
delimiter ;


drop procedure if exists pro;
delimiter $
create procedure pro()
begin
  declare x int;
  set x=11;
  select x;
end $
delimiter ;



drop procedure if exists pro;
delimiter $
create procedure pro()
begin
  declare x int;
  set @x=11;
  select @x;
end $
delimiter ;


drop procedure if exists pro;
delimiter $
create procedure pro()
begin 
declare x int default 100;
   set @z := now();
   select x,@a;
end $
delimiter ;



drop procedure if exists pro;
delimiter $
create procedure pro( out x int ,in y int)
begin
  set x:=y;
select x;
end $
delimiter ;



drop procedure if exists pro;
delimiter $
create procedure pro(in x int)
begin
  if(x=20) then
    select "good";
else
   select "not good";
end if;
end $
delimiter ;


drop procedure if exists pro;
delimiter $
create procedure pro()
begin
      declare x int default 1;
          l : LOOP
                  select x; 
                  set x:= x+1;

                  if x=11 THEN 
			  leave l;
 		end if;
	end loop l;
end $
delimiter;


drop procedure if exists pro;
delimiter $
create procedure pro()
begin
     declare x int default 4;
          l:LOOP
              select x;
              set x:=x+1;
              if x=23 THEN 
		      leave l;
              end if;
          end LOOP l;
end $
delimiter ;


drop procedure if exists pro;
delimiter $
create procedure pro(in a int)
begin 
   declare x int;
      set x=2;
        l:LOOP
      select x;
      set x:=x+1;

      if x>a then
           leave l;
      end if;
      end loop l;
end $
delimiter ;


drop procedure if exists pro;
delimiter $
create procedure pro(in x int)
begin
    declare flag bool default false;
    select distinct true into flag from emp where deptno=x;
    if flag=true then 
      select ename,job,deptno from emp where deptno=x;
  else
   select 'not found';
   end if;
end $
delimiter ;

*/

drop procedure if exists pro;
delimiter $ 
create procedure pro()
begin 
	declare z int default 0;
        select count(*)-5 into z from emp;
        select ename, job, sal  from emp limit z,5;
end $
delimiter ;































       