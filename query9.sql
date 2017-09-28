SELECT name, COUNT(PetId)
FROM petOwner
JOIN Pet_Owner ON Pet_Owner.OwnerId=petOwner.id
GROUP BY name;