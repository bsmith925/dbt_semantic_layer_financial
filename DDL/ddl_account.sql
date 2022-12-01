-- auto-generated definition
--use schema DBT_SEMANTIC_LAYER_POC.
create or replace table dbt_semantic_layer_poc.financial.account
(
	account_id  integer default 0 not null primary key,
	district_id integer default 0 not null,
	frequency   varchar(18)   not null,
	date        date          not null,
	constraint account_ibfk_1 foreign key (district_id) references district(district_id)
);
