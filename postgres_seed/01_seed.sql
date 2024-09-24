create table public.test50k (
  emp_id serial primary key, 
  emp_name text, 
  empl_no integer); 

insert into public.test50k(emp_name,empl_no) 
select 
  gen_random_uuid()::text, 
  floor(random()*5e4)::int 
from generate_series(1,5e4,1);



select empl_no, count(*) from public.test50k group by 1;