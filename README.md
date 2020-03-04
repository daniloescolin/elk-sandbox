Sandbox logging infrastructure using Docker Compose (`docker-compose/` folder) and Kubernetes (`k8s/` folder)

Execute following command to run docker-compose version:
```
docker-compose -f docker-compose/docker-compose.yml up
```

Description:
The example project consists of 4 elements:
1) ElasticSearch used to store, full-text search and analyze logs
2) Logstash is a logs aggregator. It aggregates logs, transforms/enriches and sends to ElasticSearch
3) Filebeat - lightweight log collector. Filebeat's purpose is to collect logs from files and to send to various output sources, such as Logstash, Kafka or Elasticsearch
4) Kibana is a visualization layer for your logs, UI interface to search and analyze logs

After the start of all docker containers, you can find some example logs in Kibana (http:/localhost:5601)

Known bugs:
1) Updating logs in example log files triggers full file reload, so every log will appear for the second time
