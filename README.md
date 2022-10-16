# Vagrant-Flask-Dev

### Created a development environment by using Vagrant. 
1. Vagrant is creating a VM on Virtual Box, `hashicorp/bionic64` is the base image of the VM. 
2. It's installing docker for us and pulling images I specified.
3. After change in local we need to run bash.sh script.The commit is created and pushed to the github repository.
4. When the repository is committed, a new image will be pushed to docker hub (this is what .github/workflows/docker-publish.yml does)
5. Waits for 25 seconds destroys the old environment and then creates the new environment
6. Connects to the machine
7. Send curl request to http://localhost:8000 to see the output of the application in the virtual machine
8. Use port 5000 to see output of application from within docker container
curl http://localhost:5000
9. Send curl request to http://localhost:8080 to see the output of the application locally
-----
### Solved CI/CD part with Github Actions.
1. When the repo received new commit, new image is building in actions.
2. Tests are running while image is building
3. Pushing new image to docker hub
-----
## USAGE
1. Clone the repo
2. Create a Github Repo for yourself and add dockerhub username and token as secret.
3. Replace your docker hub username and repo name with neccesary places in `.github/workflows/docker-publish.yml` and `./Vagrantfile`. (dockerhub_username/repo)
5. Run `bash.sh` on your local.
6. Pretty simple development environment is ready to use.
-----
