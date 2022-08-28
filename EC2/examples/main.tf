module "s3" {
  source="../../s3"
  s3_bucket="demo-buck-418"
}

module "Demo-users" {
  source="../"
  users-list=["demo-user1","demo-user2","demo-user3"]
  users-group="demo-usergroup-418"
  ami1= "ami-051dfed8f67f095f5"
  ami2="ami-051dfed8f67f095f5"
}



