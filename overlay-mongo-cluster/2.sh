#!/bin/bash 

mongodb1="mongo-1-1"
mongodb2="mongo-1-2"
mongodb3="mongo-1-3"

port="27017"
RS="rs1"

echo "Started.."

echo setup.sh time now: `date +"%T" `
mongo <<EOF
   var cfg = {
        "_id": "${RS}",
        "members": [
            {
                "_id": 0,
                "host": "${mongodb1}:${port}"
            },
            {
                "_id": 1,
                "host": "${mongodb2}:${port}"
            },
            {
                "_id": 2,
                "host": "${mongodb3}:${port}",
                "arbiterOnly":true
            }
        ]
    };
    rs.initiate(cfg, { force: true });
    rs.reconfig(cfg, { force: true });
EOF
