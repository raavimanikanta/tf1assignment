
    // Creating the multiple users by using count it creates the multiple users 
resource "aws_iam_user" "lb" {
  count=length(var.users-list)
  name =var.users-list[count.index] 
#   path = "/system/"

  tags = {
    tag-key = "Demo-users"
  }
}
     // creating the group :-
resource "aws_iam_group" "user-group" {
  name = var.users-group
#   path = "/users/"
}

    // Group where the users and groups are mentioned and all the users will be added to the users group :-
resource "aws_iam_group_membership" "demo-team" {
  users = [for i in aws_iam_user.lb : i.name ]
  name="demo-users-group"
  group=aws_iam_group.user-group.name

}
      ## optional resources
resource "aws_instance" "web" {
  ami           = var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "Demo-instance-418"
    owner = "Manikanta"
    purpose = "Training Tf"
  }
}



