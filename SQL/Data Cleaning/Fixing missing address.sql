SELECT a.parcelid, a.propertyaddress, b.parcelid AS parcelid_b, b.propertyaddress AS propertyaddress_b, COALESCE(a.PropertyAddress, b.PropertyAddress) AS merged_propertyaddress
FROM Housing a
JOIN Housing b ON a.parcelid = b.parcelid
where a.propertyaddress <> b.propertyaddress


/*
UPDATE Housing
Set saledate = strftime('%Y-%m-%d', saledate)

UPDATE Housing
SET propertyaddress = COALESCE(a.PropertyAddress, b.PropertyAddress)
FROM Housing a
JOIN Housing b ON a.parcelid = b.parcelid AND a.[uniqueid ] <> b.[uniqueid ]
WHERE Housing.propertyaddress IS NULL;
*/



