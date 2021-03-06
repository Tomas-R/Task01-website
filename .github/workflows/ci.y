name: deploy to a server on push

on:
  push:
    branches: [ master ]
    
jobs:
  deploy-to-server:
    runs-on: ubuntu-latest
    steps:
   #   - uses: actions/checkout@v2  # This action checks-out your repository under $GITHUB_WORKSPACE, so your workflow can access it.
      - uses: appleboy/ssh-action@master # GitHub Action for copying files and artifacts via SSH
        with:
          host: 164.132.173.129
          username: tomas
          key: ${{ secrets.PRIVATE_KEY }}
          port: 59674
          script:
            git clone https://github.com/Tomas-R/Task01-website.git
