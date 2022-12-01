create or replace table DBT_SEMANTIC_LAYER_POC.FINANCIAL.loan
(
	loan_id    integer default 0 not null primary key,
	account_id integer           not null,
	date       date          not null,
	amount     integer           not null,
	duration   integer           not null,
	payments   decimal(6, 2) not null,
	status     varchar(1)    not null,
	constraint loan_ibfk_1 foreign key (account_id) references account(account_id)
);

