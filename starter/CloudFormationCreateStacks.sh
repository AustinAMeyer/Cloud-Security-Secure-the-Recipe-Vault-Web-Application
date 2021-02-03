aws cloudformation create-stack \
--region us-east-1 \
--stack-name c3-s3 \
--template-body file://starter/c3-s3.yml
sleep 120
aws cloudformation create-stack \
--region us-east-1 \
--stack-name c3-vpc \
--template-body file://starter/c3-vpc.yml
sleep 120
aws cloudformation create-stack \
--region us-east-1 \
--stack-name c3-app \
--template-body file://starter/c3-app.yml \
--parameters ParameterKey=KeyPair,ParameterValue=$1 \
--capabilities CAPABILITY_IAM