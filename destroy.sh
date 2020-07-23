#!/bin/sh
checkSucessful(){
    if [ $? != 0 ];
    then
        echo "Error Execution"
        exit 1
    fi
}
echo "----------------------------------------"
echo "Environment variables"
printenv
    checkSucessful
echo "----------------------------------------"

terraform init \
    -backend=true \
    -backend-config="bucket=$REMOTE_STATE_BUCKET-$ENV-$ENV_VERSION" \
    -backend-config="key=$REMOTE_STATE_FILE" \
    -backend-config="region=$REMOTE_STATE_AWS_REGION"
    checkSucessful

echo "----------------------------------------"
echo "Validating terraform files"
terraform validate
    checkSucessful
echo "----------------------------------------"
echo "Destroy..."

terraform destroy  \
    -var env="$ENV" \
    -var envVersion="$ENV_VERSION" \
    -var region="$AWS_REGION" \
    -var product="$PRODUCT" \
    -var role=$ROLE \
    -var createdBy="$CREATED_BY" \
    -var owner="$OWNER" \
    -var release=$RELEASE \
    -var project=$PROJECT \
    -var domain=$DOMAIN \
    -auto-approve
    checkSucessful
echo "----------------------------------------"