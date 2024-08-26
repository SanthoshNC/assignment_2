# DevSecOps assignment

Repository containing the code for the DevSecOps assignment.

## Table of Contents

- Shift-Left Security
- Infrastructure as Code (IaC) Security
- Container Security
- Secrets Management
- Logging and Monitoring

## #1 Shift-Left-Security
**Task: Integrate Static Application Security Testing (SAST) into a CI/CD pipeline**:
- Tools Used:
  - CI Tool: GitHub Actions
  - Secret Scanning: git-leaks
  - SAST Tool: SonarCloud
  - Programming Language: React
- **Steps:**
    - Created a basic hello-world react app with some vulnerable packages and commited the same in the Github Repo
    - Created an account in `SonarCloud` and created the below mentioned items:
      - Organisation : santhosh-devops-demo
      - Project : scb-assignment
      - Sonar Token : Secret to be used by Github Actions
    - Created a workflow file named `app-deploy.yml` with the steps for secret scanning and static code analysis testing with the option to run manually
    - Added the Sonar Token as the secret in the path : Repo -> Settings -> Security -> Secrets and variables -> Actions with the name: `SONAR_TOKEN`
 - **Screenshots:**
   - SonarCloud Console:
  ![image](https://github.com/user-attachments/assets/c9a33b73-477f-4e9c-99de-e0232736fc74)   
   - Secret Scanning Result by `gitleaks`:
  ![image](https://github.com/user-attachments/assets/09e0c03c-9df7-4c52-8168-2b010791eb1f)   
   - Secret Scanning Result by `GHAS`:
  ![image](https://github.com/user-attachments/assets/779ccf28-048c-40fd-a046-a0e409b4272f)   

## #2 Infrastructure as Code (IaC) Security
**Task: Scan IaC templates for security misconfigurations**:
- Tools Used:
  - CI Tool: GitHub Actions
  - Secret Scanning: git-leaks
  - IAC Tool: Terraform
  - Public Cloud: AWS
  - Linting Tool: TFLint
  - Static Code Analysis: Checkov
- **Steps:**
    - Created a basic modularised terraform code to create a simple s3 bucket and commited the same in the Github Repo
    - Created a workflow file named `infra-deploy.yml` with the steps for secret scanning, static code analysis testing and other terraform inbuilt options to deploy the provided infra
    - Added the IAM Access Key and Secret Access Key as the secrets in the path : Repo -> Settings -> Security -> Secrets and variables -> Actions with the names: `AWS_ACCESS_KEY_ID` & `AWS_SECRET_ACCESS_KEY`
 - **Screenshots:** 
   - Secret Scanning Result by `gitleaks`:
   ![image](https://github.com/user-attachments/assets/ed44ba01-257b-495c-bf13-1a01f00018e5)
   - Static Code Analysis Results by `Checkov`:
   ![image](https://github.com/user-attachments/assets/7704f2be-7374-4e4a-8d9c-28fa2b6ebf7d)
 

## #3 Container Security
**Task: Scan and secure a Docker container image**:
- Tools Used:
  - CI Tool: GitHub Actions
  - Containerization tool: Docker
  - Image Scanner: Trivy
  - Remidiation tool: GitHub Advanced Security(GHAS)
  - Remote Repository: DockerHub
- **Steps:**
    - Created a multistage vulnerable Dockerfile for the react app created in step #1 and commited the same in the Github Repo
    - Modified the workflow file named `app-deploy.yml` with the steps for docker build, docker image scan and docker push
    - Added a new step to upload the `trivy` results in `sariff` format to `GitHub Advanced Security(GHAS)`
    - Added the IAM Access Key and Secret Access Key as the secrets in the path : Repo -> Settings -> Security -> Secrets and variables -> Actions with the names: `DOCKERHUB_USERNAME` & `DOCKERHUB_PASSWORD`
 - **Screenshots:** 
   - GitHub Actions Workflow:
   ![image](https://github.com/user-attachments/assets/2476e33f-0cdb-4290-8c67-29340f04b67c)
   - `Trivy` Results in `GHAS`:
   ![image](https://github.com/user-attachments/assets/00663944-d492-45b1-a269-3eb9a0753bf8)
   - Image in `DockerHub`:
   ![image](https://github.com/user-attachments/assets/c91b374e-872c-43c2-a218-2d390ff98d61)


## #4 Secrets Management
**Task: Implement secure secrets management**:
- Tools Used:
  - CI Tool: GitHub Actions
  - Secret Management Tool: GitHub Actions Secrets
- **Steps:**
    - Added the respective secrets in the path : Repo -> Settings -> Security -> Secrets and variables -> Actions at the repository level
    - Added the code to use the secrets in the GitHub Actions pipeline in the format : `${{ secrets.SuperSecret }}`
 - **Screenshots:** 
   - GitHub Actions Workflow:
    ![image](https://github.com/user-attachments/assets/5e04cd39-b649-4ad9-9a79-b6119a7af8a6)
   - GitHub Actions Secrets:
    ![image](https://github.com/user-attachments/assets/bd22f323-304f-49f0-be0e-5e0b2da18718)

 ## #5 Logging and Monitoring
**Task: Implement centralized logging with GUI for pipeline builds with scan results dashboard**:
- Tools Used:
  - CI Tool: GitHub Actions
  - Logging Tool : AWS Cloud Watch Logs
- **Steps:**
    - Added the steps to get the latest log file of the Github Action Job execution and pushed the same to a `Log Group` with the specific `Log Stream` in `AWS Cloud Watch`
    - Created the dashboard based on the provided Log Group
 - **Screenshots:** 
   - AWS Cloud Watch Log Group:
    ![image](https://github.com/user-attachments/assets/e8a98c39-c5c3-4094-9c9b-b5ce329596ea)
   - AWS Cloud Watch Log Stream:
    ![image](https://github.com/user-attachments/assets/55b17ef3-a1aa-4135-8f03-0bcbf8e6c6a6)
   - AWS Cloud Watch Dashboard:
    ![image](https://github.com/user-attachments/assets/12def0e9-69c0-424e-8d0d-2531c3b7344d)

  

      
