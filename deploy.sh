docker build -t muzammilmomin/multi-client -f ./client/Dockerfile ./client
docker build -t muzammilmomin/multi-server -f ./server/Dockerfile ./server
docker build -t muzammilmomin/multi-worker -f ./worker/Dockerfile ./worker
docker push muzammilmomin/multi-client
docker push muzammilmomin/multi-server
docker push muzammilmomin/multi-worker
kubectl apply -f k8s
kubectl 