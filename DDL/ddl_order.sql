create table DBT_SEMANTIC_LAYER_POC.FINANCIAL."ORDER"
(
	order_id   integer default 0 not null primary key,
	account_id integer           not null,
	bank_to    varchar(2)    not null,
	account_to int           not null,
	amount     decimal(6, 1) not null,
	k_symbol   varchar(8)    not null,
	constraint order_ibfk_1 foreign key (account_id) references account(account_id)
);

