create table DBT_SEMANTIC_LAYER_POC.FINANCIAL.disp
(
	disp_id    integer        not null  primary key,
	client_id  integer        not null,
	account_id integer        not null,
	type       varchar(9) not null,
	constraint disp_ibfk_1 foreign key (account_id) references account(account_id),
	constraint disp_ibfk_2 foreign key (client_id) references client(client_id)
);

