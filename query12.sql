USE pets;
SELECT petOwner.name FROM petOwner
LEFT OUTER JOIN Pet_Owner
ON petOwner.id = Pet_Owner.OwnerId
WHERE Pet_Owner.PetId is NULL;
