CREATE TABLE Employee (
	"emp_id" int,
    "emp_name" nvarchar(150) NOT NULL,
    "emp_addr" nvarchar(150),
    "emp_salary" real NOT NULL,
	"emp_position" nvarchar(150),
	"emp_sex" nvarchar(50),
	"emp_phone" nvarchar(50) NOT NULL,
	PRIMARY KEY("emp_id"),
);

CREATE TABLE Depot (
	"d_id" int,
    "d_addr" nvarchar(150),
    "manager_id" int NOT NULL,
	PRIMARY KEY("d_id"),
	CONSTRAINT "FK_manager_id" FOREIGN KEY 
	(
		"manager_id"
	)REFERENCES "dbo"."Employee" (
		emp_id
	),
);

CREATE TABLE Goods (
    "g_id" int,
    "g_name" nvarchar(50) NOT NULL,
    "g_price" real NOT NULL,
	"g_depotCount" int NOT NULL,
	"g_branchCount" int NOT NULL,
	PRIMARY KEY(g_id),
);

CREATE TABLE "List" (
   "l_id" int PRIMARY KEY 
    REFERENCES "Depot"("d_id")
    ON DELETE CASCADE,
   "l_date" date,
);

CREATE TABLE List_Detail (
    ld_id int PRIMARY KEY 
    REFERENCES "List"(l_id)
    ON DELETE CASCADE,
	good_id int,
	good_count int,
);

CREATE TABLE "ProviderCompany" (
    "p_id" int,
    "p_name" nvarchar(50),
    "list_id" int NOT NULL,
	PRIMARY KEY("p_id"),
	FOREIGN KEY ("list_id") REFERENCES "List"("l_id"),
);

CREATE TABLE "Sotre" (
    "s_name" nvarchar(50),
    "list_id" int NOT NULL,
	PRIMARY KEY("s_name"),
	CONSTRAINT "FK_list_id" FOREIGN KEY 
	(
		"list_id"
	)REFERENCES "dbo"."List" (
		"l_id"
	),
);



CREATE TABLE "Users" (
    "u_id" int,
    "u_name" nvarchar(50) NOT NULL,
    "u_addr" nvarchar(150),
	"o_date" date,
	"branch_id" int NOT NULL,
	PRIMARY KEY("u_id"),
);

CREATE TABLE Orders (
    o_id int,
    owner_id int NOT NULL,
    good_id int NOT NULL,
	o_date date,
	PRIMARY KEY(o_id),
	FOREIGN KEY (good_id) REFERENCES Goods(g_id),
	FOREIGN KEY (owner_id) REFERENCES Users(u_id),
);

CREATE TABLE Rate (
	"r_id" int,
    "r_amount" int,
    "user_id" int NOT NULL,
	"order_id" int,
	PRIMARY KEY("r_id"),

	CONSTRAINT "FK_user_id" FOREIGN KEY 
	(
		"user_id"
	)REFERENCES "dbo"."Users" (
		"u_id"
	),

	CONSTRAINT "FK_order_id" FOREIGN KEY 
	(
		"order_id"
	)REFERENCES "dbo"."Orders" (
		"o_id"
		),
	);

CREATE TABLE Branch (
    "b_id" int,
    "city" nvarchar(50),
    "addr" nvarchar(150),
	"order_id" int NOT NULL,
	"manager_id" int NOT NULL,
	"rate_id" int NOT NULL,
	PRIMARY KEY(b_id),
	FOREIGN KEY ("order_id") REFERENCES "dbo"."Orders"("o_id"),
	FOREIGN KEY ("rate_id") REFERENCES "Rate"("r_id"),
	FOREIGN KEY ("manager_id") REFERENCES "Employee"("emp_id"),
);

CREATE TABLE Bank_acc (
	acc_id int,
    acc_balance real,
	accType nvarchar(50),
	branch_id int,
	PRIMARY KEY(acc_id),
	FOREIGN KEY (branch_id) REFERENCES Branch(b_id),
);




