SELECT petName
FROM pet
LEFT OUTER JOIN Pet_Owner ON Pet_Owner.petId=pet.id
WHERE Pet_Owner.ownerId IS NULL
AND neutered = '1';