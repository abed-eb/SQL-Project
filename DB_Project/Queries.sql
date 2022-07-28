--Q1--
SELECT p_name
FROM ProviderCompany PC
WHERE PC.list_id IN(
SELECT LD.ld_id
FROM Orders O
inner join List_Detail LD ON O.good_id = LD.good_id
WHERE LD.good_id = O.good_id
)

--Q2--
SELECT U.u_name, U.u_id
FROM Users U
inner join 
(
	SELECT B.b_id
	FROM Branch B
	WHERE B.b_id IN 
	(
		SELECT BA.branch_id 
		FROM Bank_acc BA
		WHERE BA.acc_balance > 250000
	) AND B.rate_id IN 
	(
		SELECT R.r_id
		FROM Rate R
		WHERE R.r_amount > 5
	)
) A ON U.branch_id = A.b_id


--Q3--
SELECT E.emp_id,E.emp_name
FROM Employee E
inner join 
(
	SELECT b_id, rate_id
	FROM Branch B
	inner join 
	(
		SELECT branch_id
		FROM Bank_acc BA
		WHERE BA.acc_balance > 250000 AND BA.accType = 'PasanDaz'
	) A ON A.branch_id = B.b_id
	WHERE B.rate_id IN 
	(
		SELECT R.r_id
		FROM Rate R
		WHERE R.r_id > 5
	)
) C ON C.b_id = E.emp_position