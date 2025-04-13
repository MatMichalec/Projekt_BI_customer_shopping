-- Top 5 kategorii wg przychodu
SELECT category, SUM(quantity * price) AS revenue
FROM transactions
GROUP BY category
ORDER BY revenue DESC
LIMIT 5;

-- Średnia wartość koszyka
SELECT AVG(quantity * price) AS avg_basket
FROM transactions;

-- Liczba transakcji dziennie
SELECT invoice_date, COUNT(*) AS transactions
FROM transactions
GROUP BY invoice_date
ORDER BY invoice_date;

-- Rozkład wiekowy
SELECT age, COUNT(*) AS customers
FROM transactions
GROUP BY age
ORDER BY age;

-- Udział metod płatności
SELECT payment_method, COUNT(*) * 100.0 / SUM(COUNT(*)) OVER() AS percentage
FROM transactions
GROUP BY payment_method;
