USE pets;
SELECT pet.petname 
FROM pet
LEFT OUTER JOIN Pet_Owner
ON pet.id = Pet_Owner.PetId
LEFT OUTER JOIN petOwner
ON Pet_Owner.OwnerId = petOwner.id
WHERE petOwner.name = "John Smith";

