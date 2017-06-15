#!/bin/bash

echo $1
echo $2

cat <<EOF | spark-shell --packages 'com.databricks:spark-xml_2.11:0.4.1'
val zipper = udf { (a: Seq[String], b: Seq[String]) => a.zip(b) }
val df = spark.read.format("xml").load("$1")
df.select('id, zipper(split('fixed, "\n"), split('text, "\n")) as "pairs").coalesce(1).write.json("$2")
EOF
