#!/bin/bash

###############
#Author: Yadnesh
#Date: 05/09/2025

#Version: V1
#
#This script will report the AWS resource usage
###############
#Use this cmd for debugging 
#set -x

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

echo "Enter your AWS region :"
read region
#list s3 buckets

echo "Print list of s3 buckets: "
aws s3 ls

#list EC2 Instances

echo "Print list of EC2 instances"
aws ec2 describe-instances --region $region | jq '.Reservations[].Instances[].InstanceId'

#List lambda

aws lambda list-functions

#list IAM users
echo "Print list of IAM Users: "
aws iam list-users
