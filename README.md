## Running a Tomcat Docker Container in a Ubuntu Server in Google Cloud Platform Using Terraform

### App Description
`TODO://` Using Terraform to bring up the server in GCP

`TODO://` In the User stories section below, add an `x` between the `-[ ]` like this `- [x]` for any user story you complete. (☝️ Remove this paragraph after after checking off user stories)

### Steps to execute
- [ ] 1. Copy files to a project folder.

- [ ] 2. Install Terraform.
   - [ ] a. sudo apt-get install unzip
   - [ ] b. wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
   - [ ] c. unzip terraform_0.11.11_linux_amd64.zip
   - [ ] d. sudo mv terraform /usr/local/bin/
   - [ ] e. terraform --version 

- [ ] 3. Install jq.
   - [ ] sudo apt-get install jq

- [ ] 4. Create a google cloud account.
   - [ ] Navigaition Menu --> IAM & admin --> service accounts --> create service account -> Provide a service account name --> Role --> Project --> Owner --> Create Key --> Key Type Json --> Done
   - [ ] automatically a JSON credentials file will be generated

- [ ] 5. Rename the file to credentials.json and move to the project folder.

- [ ] 6. Generate Private and Public Key pair

   - [ ] ssh-keygen -f ubuntu


- [ ] 7. Set Environment variables

   - [ ] source .env

- [ ] 8. Run The below commands

   - [ ] terraform init
   - [ ] terraform plan
   - [ ] terraform apply

- [ ] 9. External Ip will be generated.
	
   - [ ] Open the browser and enter the IP
   - [ ] Wait for 2 to 3 mins for the server to boot up

- [ ] 10. To login to the server

   - [ ] ssh ubuntu@<ip address> -i ubuntu

