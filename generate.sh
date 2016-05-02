#!/bin/sh

wget http://repo1.maven.org/maven2/io/swagger/swagger-codegen-cli/2.1.6/swagger-codegen-cli-2.1.6.jar -O swagger-codegen-cli.jar
java -jar swagger-codegen-cli.jar generate -l ruby -o . -i https://staging-hierarchy.talis.com/api-docs -c config.json -t templates

