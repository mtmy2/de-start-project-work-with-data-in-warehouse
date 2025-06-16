--Шаг 6. Напишите скрипт для инкрементального обновления витрины

DROP TABLE IF EXISTS dwh.load_dates_customer_report_datamart;

CREATE TABLE IF NOT EXISTS dwh.load_dates_customer_report_datamart (
	id BIGINT GENERATED ALWAYS AS IDENTITY NOT NULL,
	load_dttm DATE NOT NULL,
	CONSTRAINT load_dates_customer_report_datamart_PK PRIMARY KEY (id)
);
COMMENT ON TABLE dwh.load_dates_customer_report_datamart IS 'дата загрузки витрины по покупателям';

