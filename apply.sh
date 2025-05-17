kubectl apply -f namespace.yaml
kubectl apply -f cicd-namespace.yml

kubectl apply -f elastic/elastic-service.yaml
kubectl apply -f elastic/elastic.yaml
sleep 3
kubectl apply -f kibana/kibana.yaml
kubectl apply -f kibana/kibana-service.yaml


# kubectl delete configmaps -n assaf filebeat-config
# kubectl create configmap filebeat-config --from-file=filebeat/filebeat_configmap.yml  -n assaf


kubectl apply -f logstash/logstash_pipeline.yml 
kubectl apply -f logstash/logstash_deployment.yml 
kubectl apply -f logstash/logstash_service.yml


kubectl apply -f filebeat/filebeat_configmap.yml
kubectl apply -f filebeat/filebeat-service-account.yml
kubectl apply -f filebeat/filebeat-rbac.yml
kubectl apply -f filebeat/filebeat.yaml

# kubectl apply -f app/app_deployment.yml  
# kubectl apply -f  app/app_service.yml  
helm repo add jenkins https://charts.jenkins.io
helm install jenkins -f jenkins-values.yaml jenkins/jenkins --namespace cicd