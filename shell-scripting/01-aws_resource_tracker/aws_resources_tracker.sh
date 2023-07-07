#!/bin/bash

# Report the usage of AWS resources

set -x

# Track AWS s3
# Track AWS EC2
# Track IAM users
# Track AWS Lambda

# List S3 buckets being used
echo "Displaying s3 buckets"
aws s3 ls

# List EC2 Instances
echo "Displaying EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda
echo "Listing Lambda service"
aws lambda list-functions

# List IAM users
echo "Listing IAM users"
aws iam list-users