module "frankfurt" {
  providers = {
    aws = aws.frankfurt
  }
  source = "./modules/regional_ec2"
  region = "frankfurt"
}

module "ireland" {
  providers = {
    aws = aws.ireland
  }
  source = "./modules/regional_ec2"
  region = "ireland"
}

module "london" {
  providers = {
    aws = aws.london
  }
  source = "./modules/regional_ec2"
  region = "london"
}

module "milan" {
  providers = {
    aws = aws.milan
  }
  source = "./modules/regional_ec2"
  region = "milan"
}

module "paris" {
  providers = {
    aws = aws.paris
  }
  source = "./modules/regional_ec2"
  region = "paris"
}

module "stockholm" {
  providers = {
    aws = aws.stockholm
  }
  source = "./modules/regional_ec2"
  region = "stockholm"
}
