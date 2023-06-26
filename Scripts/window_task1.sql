SELECT e.firstName, e.lastName, m.model, count(*) as sold_models,
RANK() OVER(partition by e.employeeId order by count(*) DESC) as sold_models_rank
FROM employee e
JOIN sales s
on s.employeeId = e.employeeId
JOIN inventory i
ON i.inventoryId = s.inventoryId
JOIN model m
ON m.modelId = i.modelId
WHERE e.title = 'Sales Person'
GROUP BY e.employeeId, m.model
