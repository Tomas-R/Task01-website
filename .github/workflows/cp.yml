name: deploying to s3 # https://medium.com/trackstack/deploying-a-react-app-to-aws-s3-with-github-actions-b1cb9ba75c95

on:
  push:
    branches: [ master ]
  
jobs:
  build:
    runs-on: ubuntu-latest # specify the machine
      
    strategy:
      matrix:
        node-version: [14.x] # specify node version
 
    steps:
     - uses: actions/checkout@v2

env:
  AWS_S3_BUCKET: ${{ secrets.AWS_PRODUCTION_BUCKET_NAME }}
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
  AWS_REGION: ${{ secrets.AWS_REGION }}


deploy:
  script:
     - curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
     - apt install unzip
     - unzip awscliv2.zip
     - sudo ./aws/install
     - aws s3 cp .  s3://AWS_S3_BUCKET/ --recursive --include "*" 
