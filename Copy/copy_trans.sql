put file://C:\Users\Brad\deploy.io\loan-data\financial_trans.csv @financial;


COPY INTO DBT_SEMANTIC_LAYER_POC.FINANCIAL.TRANS
FROM (SELECT
g.$1,g.$2,g.$3,g.$4,g.$5,g.$6,g.$7,g.$8,g.$9,g.$10
FROM @financial as g)
FILE_FORMAT	 = (
	TYPE = 'csv'
    SKIP_HEADER = 0
    FIELD_DELIMITER = ','
    RECORD_DELIMITER = '\n'
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    NULL_IF = ('NULL')
    ESCAPE = '\\'
);