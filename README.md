# docker-asp-net-core
Docker Solution vor Developing ASP.NET CORE Apps



1. docker-compose up

2. sudo chmod -R 777 app nginx (777 only for dev purposes)
3. cp default nginx/sites-available
4. sudo ln  -s <absoluter pfad zu sites-available>/<dateiname> <absoluter pfad zu sites-enabled>
4. docker exec -it asp-net bash 
5. asp-net container:   service nginx start
