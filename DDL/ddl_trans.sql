create or replace table DBT_SEMANTIC_LAYER_POC.FINANCIAL.trans
(
	trans_id   integer default 0    not null primary key,
	account_id integer default 0    not null,
	date       date             not null,
	type       varchar(6)       not null,
	operation  varchar(14)      null,
	amount     integer              not null,
	balance    integer              not null,
	k_symbol   varchar(11)      null,
	bank       varchar(2)       null,
	account    integer  null,
	constraint trans_ibfk_1 foreign key (account_id) references account(account_id)
);

