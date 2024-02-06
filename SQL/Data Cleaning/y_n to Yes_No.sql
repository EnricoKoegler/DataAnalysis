SELECT DISTINCT(soldasvacant), Count(soldasvacant)
from Housing
GROUP by soldasvacant;

/*
Update Housing
set soldasvacant = 'No'
WHERE soldasvacant = 'N'
*/