#!/bin/bash

echo "Compiling code...."
mvn clean install

echo "Launching server..."
java -jar target/wicket-demo.jar -httpPort=7070
