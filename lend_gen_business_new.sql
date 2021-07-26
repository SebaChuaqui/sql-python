use lead_gen_business;

--1--
SELECT SUM(amount) AS 'Ingresos Totales'
FROM billing 
WHERE month(charged_datetime)=3 and year(charged_datetime)=2012;

--2--
SELECT billing.client_id AS 'Cliente ID', CONCAT(SUM(billing.amount)) 
AS 'Ingresos' FROM billing
WHERE billing.client_id = 2;

--3--
SELECT sites.domain_name AS 'Sitios', sites.client_id AS 'Cliente ID' 
FROM sites
WHERE sites.client_id = 10;

--4a--
SELECT client_id, count(*) AS 'N° Sitio Web', 
DATE_FORMAT(created_datetime, "%M") month_created, 
DATE_FORMAT(created_datetime, "%Y") year_created
FROM sites WHERE client_id=1
GROUP BY client_id, month_created, year_created;

--4b--
SELECT client_id, count(*) AS 'N° Sitio Web', 
DATE_FORMAT(created_datetime, "%M") month_created, 
DATE_FORMAT(created_datetime, "%Y") year_created
FROM sites WHERE client_id=20
GROUP BY client_id, month_created, year_created;

--5--
SELECT a.domain_name AS 'Nombre Dominio', count(leads_id) AS 'Contador' 
FROM sites a, leads b WHERE a.site_id = b.site_id 
AND b.registered_datetime BETWEEN "2011-1-1" AND "2011-2-15"
GROUP BY a.domain_name;

--6-- 
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS 'Cliente', COUNT(leads.leads_id) AS 'Total' 
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
LEFT JOIN leads ON sites.site_id = leads.site_id
WHERE leads.registered_datetime >= STR_TO_DATE('1/1/2011', '%m/%d/%Y') 
AND leads.registered_datetime <= STR_TO_DATE('12/31/2011', '%m/%d/%Y')
GROUP BY CONCAT_WS(' ', clients.first_name, clients.last_name), clients.client_id
ORDER BY clients.client_id;

--7--
SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS 'Cliente', COUNT(leads.leads_id) AS 'Total', 
DATE_FORMAT(leads.registered_datetime, '%M') AS 'Mes' FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
LEFT JOIN leads ON sites.site_id = leads.site_id
WHERE EXTRACT(MONTH FROM leads.registered_datetime) >= 1 
AND EXTRACT(MONTH FROM leads.registered_datetime) <= 6 
AND DATE_FORMAT(leads.registered_datetime, '%Y') = '2011'
GROUP BY CONCAT_WS(' ', clients.first_name, clients.last_name), leads.registered_datetime
ORDER BY leads.registered_datetime;

--8--

