APPNAME=myWebApp

URLNGINX="docker-nginx.test www.docker-nginx.test"
URLASP="docker-asp.test www.docker-asp.test"
IP=127.0.2.1
CONTAINERNAME=asp-net

#docker exec  $CONTAINERNAME 
docker exec  $CONTAINERNAME dotnet new webApp -o /app/$APPNAME --no-https
#only for development!!
docker exec  $CONTAINERNAME chmod -R 777 /app 
docker exec  $CONTAINERNAME cd /app/$APPNAME
docker exec  $CONTAINERNAME dotnet run 
docker exec  $CONTAINERNAME ln -s /etc/nginx/sites-available/docker-nginx.test /etc/nginx/sites-enabled/
docker exec  $CONTAINERNAME ln -s /etc/nginx/sites-available/docker-asp.test /etc/nginx/sites-enabled/  
docker exec  $CONTAINERNAME service nginx restart

#hosteinträge setzen
sudo sed -i "2i$IP $URLNGINX" /etc/hosts
sudo sed -i "2i$IP $URLASP" /etc/hosts

