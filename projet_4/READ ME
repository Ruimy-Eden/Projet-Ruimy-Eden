# projet_4-linux
pré-requis :   
Il faut tout d'abord prendre en main le sense hat.  
Le sense hat permet de récupérer toute les informations que l'on veut transmettre.  
Il faut installer mosquitto, qui nous permettra de faire la communication.  
J'ai effectué un test sur mon localhost pour vérifier si la communication mosquitto fonctionnait bien.  
Il faut de plus sur node red, installer les palettes en liens avec sense-hat et créer le dashboard.  

Node-red:   
Ci-joint le fichier json, cependant l'adresse IP de ma raspberry change car je connecte celui-ci en wifi avec mon téléphone.
Donc les adresses IP inscrites sur le node MQTT out change.  

Pour la RP1:   
Nous ne pouvions pas envoyer les informations MOTION et ENVIRONNEMENT en même temps.
Nous avons donc paramétré le node sense hat sur l'outputs Motion events.
Donc la RP1 recoit les informations d'ENVIRONMENT SENSORS et envoit les informations de MOTIONS SENSORS.  
Le message 'textBox' est aussi envoyé de la RP1 vers la RP2.  
Je  place aussi des debugg aprés les nodes mqtt in pour vérifier la bonne récéption du message puis je l'affiche via le dashboard.
Attention à bien configurer les mqtt in sur le server localhost  

Pour la RP2:  
J'ai été en binome avec Mylaine.
Elle recoit les informations de MOTIONS SENSORS, ainsi que le 'textBox" et envoit les informations de d'ENVIRONMENT SENSORS.   

