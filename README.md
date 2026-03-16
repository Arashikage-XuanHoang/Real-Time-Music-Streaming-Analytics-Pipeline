# Music Streaming Data Pipeline

## Object 
This project streams events generated from a simulated music streaming service (similar to Spotify) and builds a data pipeline to ingest data in real time. The generated data mimics typical user activities such as listening to a song, navigating the website, or authenticating a login.

The data is processed in real time and stored in a data lake. At the same time, the data is streamed directly into the raw schema of the Data Warehouse to store the raw events. The data is then transformed every minute to produce analytical tables in the gold schema.

Finally, the dashboard visualization is refreshed every minute to display updated analytics.

Through this system, we can analyze metrics such as popular songs, active users, user demographics, and other analytical insights.

## Architecture

![Data Pipeline Architecture](images/Data_Architecture.png)

## Description
This project is inspired by the [Streamify](https://github.com/ankurchavda/streamify), which demonstrates a real-time data engineering pipeline for analyzing music streaming events. In this work, we redesign the architecture so that the entire system can run **fully on a local machine using Docker**. This allows users to easily experiment with technologies such as Kafka, Spark, Airflow, dbt, MinIO, and PostgreSQL without relying on cloud infrastructure.

## Tools & Technologies
## Tech Stack
- 🐳 **Containerization** – [Docker](https://www.docker.com/), [Docker Compose](https://docs.docker.com/compose/)
- ⚡ **Stream Processing** – [Apache Kafka](https://kafka.apache.org/), [Apache Spark Structured Streaming](https://spark.apache.org/streaming/)
- 🔄 **Orchestration** – [Apache Airflow](https://airflow.apache.org/)
- 🧱 **Transformation** – [dbt](https://www.getdbt.com/)
- 🗄️ **Data Lake** – [MinIO](https://min.io/)
- 🏛 **Data Warehouse** – [PostgreSQL](https://www.postgresql.org/)
- 📊 **Data Visualization** – [Looker Studio](https://lookerstudio.google.com/)
- 🐍 **Language** – [Python](https://www.python.org/)

