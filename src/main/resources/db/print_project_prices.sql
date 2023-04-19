SELECT project.name AS name, sum(worker.salary * (project.finish_date - start_date)) AS price
FROM project
JOIN project_worker ON project.client_id = client.name
JOIN project_worker ON project_worker.worker_id = worker.salary
GROUP BY project_worker.project_id
ORDER BY price DESC;