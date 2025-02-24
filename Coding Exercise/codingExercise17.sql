SELECT transaction_id, account_id, transaction_type, amount
,COALESCE(description, "Not Provided") as description
FROM transactions