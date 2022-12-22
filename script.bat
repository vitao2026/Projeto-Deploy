echon "Criando as imagens......."

docker build -t vitao2026/projeto-backend:1.0 backend/. 
docker build -t vitao2026/projeto-database:1.0 database/.

echo "Realizando o push das imagens..."

docker push vitao2026/projeto-backend:1.0 
docker push vitao2026/projeto-database:1.0

echo "Criando serviços no cluster.."

kubectl apply -f ./services.yml

echo "Criando os deployments.."

kubectl apply -f ./deployment.yml