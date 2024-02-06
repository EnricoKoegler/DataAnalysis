SELECT 
    SUBSTR(Propertyaddress, 1, INSTR(Propertyaddress, ',') - 1) AS Address,
    SUBSTR(Propertyaddress, INSTR(Propertyaddress, ',') + 1) AS Address2
FROM Housing;

Alter table Housing
add PropertyCity Varchar(255);

update Housing
set PropertyCity = SUBSTR(Propertyaddress, INSTR(Propertyaddress, ',') + 1);

Alter table Housing
add PropertyStreet Varchar(255);

update Housing
set PropertyStreet = SUBSTR(Propertyaddress, 1, INSTR(Propertyaddress, ',') - 1);

/*
Alter table Housing
DROP COLUMN propertyaddress
*/
