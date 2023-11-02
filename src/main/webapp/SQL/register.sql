drop table register;

select * from register;

update register(id,password,name,phonenum,mail,r_state,sysdate) values(#{id},#{password},#{name},#{phonenum},#{mail},1,sysdate);

delete register;