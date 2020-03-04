helm delete elasticsearch --namespace monitoring
helm delete kibana --namespace monitoring
helm delete logstash --namespace monitoring
helm delete filebeat --namespace monitoring

kubectl delete namespace monitoring
