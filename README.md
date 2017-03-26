# humidityReader

## build command:
```  
docker build -t gustavomitt/controlpump:1.0.1 .  
```

## Push docker image do Docker Hub  
```  
docker login  
docker push gustavomitt/controlpump:1.0.1  
```  

## Create docker swarm service :  
```  
docker service create --name="controlPump" \  
   --secret="arduino1" \  
   --secret="THINGSPEAK_API_KEY" \  
   --secret="THINGSPEAK_CHANNEL_ID" \  
   gustavomitt/controlpump:1.0.1  
```  
