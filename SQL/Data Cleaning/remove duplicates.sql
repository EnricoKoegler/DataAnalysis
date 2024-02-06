WITH RowNumCTE AS(
Select *,
	ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
					[uniqueid ]
					) row_num

From Housing
--order by ParcelID
)

DELETE
From RowNumCTE
Where row_num > 1
--Order by PropertyAddress