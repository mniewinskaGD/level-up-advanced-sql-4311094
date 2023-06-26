SELECT s.salesId, s.salesAmount, i.colour, m.model, m.EngineType
FROM sales s
JOIN inventory i
on s.inventoryId = i.inventoryId
JOIN(
      SELECT modelId, model, EngineType
      FROM model
      WHERE EngineType = 'Electric')m
on i.modelId = m.modelId

---------
SELECT s.salesId, s.salesAmount, i.colour
FROM sales s
JOIN inventory i
on s.inventoryId = i.inventoryId
WHERE i.modelId IN(
      SELECT modelId
      FROM model
      WHERE EngineType = 'Electric')
