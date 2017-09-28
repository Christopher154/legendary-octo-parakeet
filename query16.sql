USE pets;
SELECT name FROM petOwner
WHERE petOwner.name LIKE "%Smith" OR petOwner.name LIKE "%Smyth";
