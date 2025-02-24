SELECT 
    SUM(CASE WHEN category = 'Income' THEN amount ELSE 0 END) AS TotalIncome,
    SUM(CASE WHEN category = 'Expense' THEN amount ELSE 0 END) AS TotalExpenses,
    SUM(CASE WHEN category = 'Income' THEN amount ELSE -amount END) AS NetIncome
FROM transactions;