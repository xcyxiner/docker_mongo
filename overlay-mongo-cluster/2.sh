#!/bin/bash 

mongodb1="10.0.0.130"
mongodb2="10.0.0.131"
mongodb3="10.0.0.132"

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
                "host": "${mongodb3}:${port}"
            }
        ]
    };
    rs.initiate(cfg, { force: true });
    rs.reconfig(cfg, { force: true });
EOF
