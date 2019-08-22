# docker-asp-net-core
Docker Solution vor Developing ASP.NET CORE Apps 

Tested with:  

- Ubuntu 16.04 (Linux)  
- Docker version 19.03.1  

    

Installation:

1. docker-compose up  
	1.1 /etc/hosts :  	
```
	127.0.2.1 docker-nginx.test www.docker-nginx.test  
    127.0.2.1 docker-asp.test www.docker-asp.test
```
2. sudo chmod -R 777 app nginx (only for dev purposes)
3. cp default nginx/sites-available
4. sudo ln  -s <absoluter pfad zu sites-available>/<dateiname> <absoluter pfad zu sites-enabled>
4. docker exec -it asp-net bash  
	5.1 ln -s /etc/nginx/sites-available/docker-nginx.test /etc/nginx/sites-enabled/  
	5.2 ln -s /etc/nginx/sites-available/docker-asp.test /etc/nginx/sites-enabled/  
	5.3 service nginx start  
	5.4 cd /app/myWebApp   
	5.5 dotnet run  


