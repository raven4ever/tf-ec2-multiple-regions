provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  region = "eu-west-1"
  alias  = "ireland"
}

provider "aws" {
  region = "eu-west-2"
  alias  = "london"
}

provider "aws" {
  region = "eu-south-1"
  alias  = "milan"
}

provider "aws" {
  region = "eu-west-3"
  alias  = "paris"
}

provider "aws" {
  region = "eu-north-1"
  alias  = "stockholm"
}

provider "aws" {
  region = "eu-central-1"
  alias  = "frankfurt"
}
