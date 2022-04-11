drop user "${USER}";
create user "${USER}" as perm=5e9,password="${PASSWORD}";
grant all on "${USER}" to "${USER}" with grant option;
grant create database on "${USER}" to "${USER}";
grant EXECUTE FUNCTION on TD_SYSFNLIB to "${USER}";
grant all on retail_sample_data to "${USER}" with grant option;
grant all on research to "${USER}" with grant option;
