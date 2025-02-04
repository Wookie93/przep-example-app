#!/usr/bin/env bash

new_token=$(aws codeartifact get-authorization-token --domain wookie93-test --domain-owner 586794461383 --query authorizationToken --output text)

sed -i "s|authToken=.*|authToken=$new_token|" .npmrc

echo "New auth token generated inside .npmrc"
