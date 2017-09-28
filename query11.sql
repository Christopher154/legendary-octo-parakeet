SELECT DISTINCT petName, COUNT(petName)
from pet
GROUP BY petName;