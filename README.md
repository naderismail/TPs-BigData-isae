# TPs for Supaero JupyterHub

## Files:
- env_validation_with_datascience_kernel.ipynb
- tp1_initiation_spark.ipynb
- tp2_etl_streaming.ipynb
- tp3_window_agg.ipynb
- requirements.txt

Instructions:
- Place the notebooks on JupyterHub, ensure Spark and required packages are installed.
- For streaming TPs, start Kafka on a machine accessible to students.


# Spark & Kafka Labs for Supaero JupyterHub

## Included Files
- `env_validation_with_datascience_kernel.ipynb`: Validate environment and kernel setup
- `tp1_initiation_spark.ipynb`: Spark basics: DataFrames, transformations, aggregations
- `tp2_etl_streaming.ipynb`: Streaming ETL with Spark and Kafka
- `tp3_window_agg.ipynb`: Windowed aggregations in Spark Structured Streaming
- `requirements.txt`: Required Python packages

## Instructions for Students
1. **Place notebooks** in JupyterHub and make sure the Spark kernel and all required Python packages are installed.
2. **Run environment validation** (`env_validation_with_datascience_kernel.ipynb`) first to ensure everything works.
3. **For streaming labs** (TP2 & TP3):
   - Start Kafka on a machine accessible to students.
   - Use the provided `bootstrap_servers` addresses in all Kafka producers/consumers.
4. **Follow each notebook step by step**, read the comments for guidance and hints.

## Notes
- All labs are designed for **hands-on learning** with small datasets to avoid performance issues.
- For Kafka exercises, the notebooks **connect to a running broker**. Do **not** try to start Kafka/Zookeeper inside the notebook.
