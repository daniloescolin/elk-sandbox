kubectl create namespace monitoring

helm upgrade --install elasticsearch $(dirname $0)/../elasticsearch monitoring
sleep 5

helm upgrade --install kibana $(dirname $0)/../kibana monitoring
sleep 5

helm upgrade --install logstash $(dirname $0)/../logstash monitoring
sleep 5

helm upgrade --install filebeat $(dirname $0)/../filebeat monitoring
