#!/bin/bash
SPARK_APPLICATION_JAR_LOCATION="/opt/spark-apps/spark-learn.jar"
SPARK_APPLICATION_MAIN_CLASS="io.benx.spark.dataframe.DataFrame_Tutorial"
SPARK_SUBMIT_ARGS="--conf spark.executor.extraJavaOptions='-Dconfig-path=/opt/spark-apps/dev/config.conf'"

docker run --network docker-spark-cluster_spark-network -v /Users/Ben/dev/spark/docker/docker-spark-cluster/mnt/spark-apps:/opt/spark-apps --env SPARK_APPLICATION_JAR_LOCATION=$SPARK_APPLICATION_JAR_LOCATION --env SPARK_APPLICATION_MAIN_CLASS=$SPARK_APPLICATION_MAIN_CLASS spark-submit:2.3.1
