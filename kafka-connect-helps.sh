#!/bin/bash
# list all configured connector plugins
 curl http://localhost:8083/connector-plugins | python -m json.tool


curl -X POST -H 'Content-Type: application/json' -d '{
    "name": "first-connector",
    "config": {
        "connector.class": "FileStreamSource",
        "tasks.max": 1,
        "file": "/var/log/journal/confluent-kafka-connect.service.log",
        "topic": "kafka-connect-logs"
    }
  }'   http://localhost:8083/connectors

# list all configured connectors
curl http://localhost:8083/connectors | python -m json.tool

curl http://localhost:8083/connectors/first-connector | python -m json.tool
curl -X PUT http://localhost:8083/connectors/first-connector/pause
curl -X PUT http://localhost:8083/connectors/first-connector/restart
curl -X POST http://localhost:8083/connectors/first-connector/restart
curl -X DELETE http://localhost:8083/connectors/first-connector