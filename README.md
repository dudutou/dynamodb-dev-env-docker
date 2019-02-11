# Docker env for AWS DynamoDB local dev env with client (aws-cli & nodejs & aws sdk) and server (dynamodb-local). 

1. docker-compose run aws-cli /bin/bash
2. use next command to test aws-cli: 
   aws dynamodb list-tables --endpoint-url http://dynamodb-local:8000
3. use next command to test aws sdk for nodejs and the credentials settings:
   node sample.js
   # also see: https://aws.amazon.com/jp/developers/getting-started/nodejs/
