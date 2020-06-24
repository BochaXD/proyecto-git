--1
select * from dba_sys_privs where privilege='ALTER USER'
--2
show user
drop user 'ALoachamin';
--3
grant drop user to 'Aloachamin';
--4
select * from dba_sys_privs where privilege='DROP USER';
--5
select * from dba_sys_privs where privilege='CREATE PROFILE'
--6
grant create profile to 'ALoachamin';
--7
select substr(profile,1,12) perfil, substr(resource_name,1,25) recurso,
resource_type, substr(limit,1,10) limite from dba_profiles order by profile,
resource_name;
--8
select username, profile from dba_users order by username;
--9
create profile desarrollo limit sessions_per_user 2 cpu_per_session unlimited
cpu_per_call 6000 connect_time 480 idle_time 2 failed_login_attempts 2
password_life_time 120
--10
alter user prueba00 profile desarrollo;
alter user prueba01 profile desarrollo
alter user prueba02 profile desarrollo
alter user prueba03 profile desarrollo
alter user  Aloachamin  profile desarrollo
--11
select username, lock_date from dba_users where username like 'ALoachamin%'
--12
alter user ALoachamin account lock;
--13
alter user prueba01 identified externally;
set head off
select * from dba_users where username='ALoachamin'
--14
alter user ALoachamin account unlock;
--15
alter profile Aloachamin
limit
sessions_per_user 5
cpu_per_session unlimited
cpu_per_call 6000
connect_time 480
idle_time 60
failed_login_attempts 3
password_life_time 180;
--16
select * from dba_sys_privs where privilege='ALTER PROFILE';
--17
grant alter profile to ALoachamin;
--18
select profile, substr(resource_name,1,25) nombre_recurso,
substr(limit,1,20) limite from dba_profiles where profile = 'ALoachamin';
alter profile AAndresLoachamin
limit SESSIONS_PER_USER 5
connect_time default
idle_time 30;
--20
select * from dba_role_privs where grantee in
('CONNECT','RESOURCE','DBA','EXP_FULL_DATABASE','IMP_FULL_DATABASE')
order by
grantee, granted_role
select * from dba_sys_privs where grantee in
('CONNECT','RESOURCE','DBA','EXP_FULL_DATABASE','IMP_FULL_DATABASE')
order by
grantee,privilege;
select grantee, table_name, privilege from dba_tab_privs where grantee
in
('CONNECT','RESOURCE','DBA','EXP_FULL_DATABASE','IMP_FULL_DATABASE')
orde
by grantee, table_name, privilege
--21
select * from dba_sys_privs where privilege='DROP PROFILE'
--32. 32.	Conectado como usuario “PRUEBANombre_Apellido”, activar el rol “Rol_Nombre_rol” y 
--comprobar de nuevo en la vista apropiada del diccionario de datos los roles activos en la sesión
select * from session_roles;
set role all;
select * from session_roles;