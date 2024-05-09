sudo docker ps 
docker build -t loup21991/flask-api .
sudo docker run -d -p 5000:5000 loup21991/flask-api
curl http://localhost:5000/
sudo docker push loup21991/flask-api
minikube status
minikube stop
minikube start

kubectl delete deployment test-ml-score-api
kubectl create deployment test-ml-score-api --image=loup21991/flask-api:latest
kubectl rollout status deployment test-ml-score-api
kubectl get pods
minikube service list
kubectl port-forward test-ml-score-api-7f766c47b4-mb9fc 5000:5000
kubectl expose deployment test-ml-score-api --port 5000 --type=LoadBalancer --name test-ml-score-api-lb

kubectl apply -f py-flask-ml-score-api/py-flask-ml-score.yaml
kubectl delete -f py-flask-ml-score-api/py-flask-ml-score.yaml




kubectl delete deployment streamlit-app
kubectl delete service streamlit-service

https://github.com/AlexIoannides/kubernetes-mlops/tree/master
