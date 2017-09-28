USE pets;
SELECT * from pet
INNER JOIN Pet_Owner ON pet.id = Pet_Owner.PetId
WHERE pet.neutered = 1;

