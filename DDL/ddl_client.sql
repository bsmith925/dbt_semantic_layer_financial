
create or replace table DBT_SEMANTIC_LAYER_POC.FINANCIAL.client
(
	client_id   integer        not null primary key,
	gender      varchar(1) not null,
	birth_date  date       not null,
	district_id integer        not null,
	constraint client_ibfk_1 foreign key (district_id) references district(district_id)
);


