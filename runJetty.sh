#!/bin/sh
mvn clean package &&
java -jar target/dependency/jetty-runner.jar --port 8080 target/*.war