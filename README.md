# docker_mongo
mongodb docker container


#one mongo

##tree
```
mongo/
└── docker-compose.yml  

0 directories, 1 file
```

## how to use

```
cd mongo
docker-compose up -d
```

## print
```
docker exec -it mongo_mongo_1 mongo
MongoDB shell version v3.6.1
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.1
Welcome to the MongoDB shell.
For interactive help, type "help".
For more comprehensive documentation, see
    http://docs.mongodb.org/
Questions? Try the support group
    http://groups.google.com/group/mongodb-user
2018-01-08T06:31:08.627+0000 E -        [main] Error loading history file: FileOpenFailed: Unable to fopen() file /root/.dbshell: No such file or directory
> use admin
switched to db admin
> db.auth("testuser","123456");
1
> show dbs
admin  0.000GB
local  0.000GB
> exit
bye
```
