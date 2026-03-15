from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta
import logging

default_args = {
    "owner": "airflow",
    "retries": 1,
    "retry_delay": timedelta(minutes=5),
    "email_on_failure": False,
}

with DAG(
    dag_id="dbt_transform",
    description="Transform raw → gold using dbt",
    schedule_interval="* * * * *",
    start_date=datetime(2026, 1, 1),
    catchup=False,
    default_args=default_args,
    tags=["dbt", "transform"]
) as dag:

    dbt_debug = BashOperator(
        task_id="dbt_debug",
        bash_command="cd /opt/airflow/dbt && dbt debug --profiles-dir ."
    )

    dbt_run = BashOperator(
        task_id="dbt_run",
        bash_command="cd /opt/airflow/dbt && dbt run --profiles-dir ."
    )

    dbt_test = BashOperator(
        task_id="dbt_test",
        bash_command="cd /opt/airflow/dbt && dbt test --profiles-dir .",
        trigger_rule="all_done"
    )

    dbt_debug >> dbt_run >> dbt_test