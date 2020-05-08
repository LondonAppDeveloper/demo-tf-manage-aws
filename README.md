# Demo - Manage AWS Terraform with Docker

Boilerplate code for how to manage Terraform for a project using Docker.


## Requirements

The following software is required:

 1. [Docker Desktop](docker-desktop) (or on Linux you need [Docker](docker-linux) and [Docker Compose](docker-compose-linux))
 2. [aws-vault](aws-vault) or a way to set your AWS credentials as environment variables.


## Usage

 1. Authenticate with the AWS using [aws-vault](aws-vault)
 2. Run `docker-compose run --rm tf init` to initialise
 3. Run `docker-compose run --rm tf COMMAND` where `COMMAND` is the Terraform command you wish to run

[docker-desktop](https://www.docker.com/products/docker-desktop)
[docker-linux](https://docs.docker.com/engine/install/)
[docker-compose-linux](https://docs.docker.com/compose/install/)
[aws-vault](https://github.com/99designs/aws-vault)
