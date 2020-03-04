kubectl create namespace monitoring

helm upgrade --install elasticsearch $(dirname $0)/../elasticsearch
sleep 5

helm upgrade --install kibana $(dirname $0)/../kibana
sleep 5

helm upgrade --install logstash $(dirname $0)/../logstash
sleep 5

helm upgrade --install filebeat $(dirname $0)/../filebeat
