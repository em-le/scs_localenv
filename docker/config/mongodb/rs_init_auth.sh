#!/bin/bash

mongosh <<EOF
var config = {
    "_id": "dbrs",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mongodb_1:27017",
            "priority": 2
        },
        {
            "_id": 2,
            "host": "mongodb_2:27017",
            "priority": 0
        },
        {
            "_id": 3,
            "host": "mongodb_3:27017",
            "priority": 0
        },
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF

sleep 5
mongosh <<EOF
   use admin;
   admin = db.getSiblingDB("admin");
   admin.createUser(
     {
        user: "admin",
        pwd: "Q7zr2tKXoPocAJs",
        roles: [ { role: "root", db: "admin" } ]
     });
     db.getSiblingDB("admin").auth("admin", "Q7zr2tKXoPocAJs");
     rs.status();
EOF