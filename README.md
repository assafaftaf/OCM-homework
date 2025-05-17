# OCM-homework
minikube start --memory=6000 --cpus=4 --v=7 --driver docke
apply all files make sure you created the configmap (./apply.sh)

to expose:
minikube service kibana -n assaf or  kubectl port-forward -n assaf svc/kibana 30601:5601 
minikube service jenkins -n cicd

please set this line at: jenkins > manage > system > logstash:
logstash.assaf.svc.cluster.local
port 5000

to create pipeline go  to pipeline file copy it and paste on :
new item > pipeline > paste the code > save
to see the pipeline:
jenkins > pipeline > click on the pipeline you created > build now


view logs:
discover 
if u cant see data view filebeat you have to create it!
-> create data view -> filebeat-* (type) + timestamp (filed choose)-> save!
