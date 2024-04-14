name: Deploy

on:
  workflow_run:
    workflows: ["Test"]
    branches: [main]
    types:
      - completed

jobs:
  deploy:
    runs-on: self-hosted
    if: github.event.workflow_run.conclusion == 'success'

    steps:
    - name: Checkout code
      uses: actions/checkout@v3

    - name: Build and Push Docker Image
      run: ./zapakiraj_27126.sh
