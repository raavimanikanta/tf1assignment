module "s3" {
  source="../../s3"
  s3_bucket="demo-buck-a-418"
}

module "Demo-users" {
  source="../"
  users-list=["demo-user1","demo-user2","demo-user3"]
  users-group="demo-usergroup-418"
  ami1= "ami-0568773882d492fc8"
  ami2= "ami-0568773882d492fc8"
}



