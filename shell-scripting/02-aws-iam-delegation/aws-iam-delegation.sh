#!/bin/bash

# debug mode
set -x 

# get AWS Account ID
aws_account=$(aws sts get-caller-identity --query 'Account' --output text)

# Print the AWS Account ID
echo "AWS Account ID: $aws_account"

# Setting AWS region and bucket naming
aws_region="ap-southeast-2" # Set to the Sydney region
bucket_name="s3-trigger-bucket"
lambda_function_name="s3-lambda"
role_name="s3-lambda-sns"

# Create IAM role (Delegating permissions to an IAM user)
role_response=$(aws iam create-role --role-name s3-lambda-sns --assume-role-policy-document '{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": "sts:AssumeRole",
    "Principal": {
      "Service":[ 
       "lambda.amazonaws.com", 
       "s3.amazonaws.com", 
       "sns.amazonaws.com"
      ]
    }
  }]
}')

# Extract the ARN (amazon resource name) from the JSON
arn=$(echo "$role_response" | jq -r '.Role.Arn')

# Print ARN
echo "ARN : $arn"

# Attach permissions to the role
aws iam attach-role-policy --role-name $role_name --policy-arn arn:aws:iam::aws:policy/AWSLambda_FullAccess
aws iam attach-role-policy --role-name $role_name --policy-arn arn:aws:iam::aws:policy/AmazonSNSFullAccess