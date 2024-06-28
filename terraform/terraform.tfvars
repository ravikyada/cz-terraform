region = "us-west-2"

key_name          = "my-key.pub" #make sure we have key-pair created.
vpc_cidr_block    = "10.0.0.0/16"
subnet_public_1a  = "10.0.1.0/24"
availability_zone = "us-west-2a"

ami_id        = "ami-0cf2b4e024cdb6960"
instance_type = "t2.micro"

remote_bucket_name = "s3-backend"