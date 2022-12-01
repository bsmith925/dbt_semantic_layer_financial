-- auto-generated definition
create table DBT_SEMANTIC_LAYER_POC.FINANCIAL.card
(
	card_id integer default 0 not null primary key,
	disp_id integer           not null,
	type    varchar(7)    not null,
	issued  date          not null,
	constraint card_ibfk_1 foreign key (disp_id) references disp(disp_id)
);
