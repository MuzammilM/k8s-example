docker build -t muzammilmomin/multi-client:latest -t muzammilmomin/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t muzammilmomin/multi-server:latest -t muzammilmomin/mutli-server:$SHA -f ./server/Dockerfile ./server
docker build -t muzammilmomin/multi-worker:latest -t muzammilmomin/multi-worker:$SHA -f ./worker/Dockerfile ./worker
docker push muzammilmomin/multi-client
docker push muzammilmomin/multi-server
docker push muzammilmomin/multi-worker
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=muzammilmomin/multi-server