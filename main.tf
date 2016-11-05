resource "aws_s3_bucket" "remote_state" { 
     bucket = "pjm_remote_state-${var.environment}" 
     acl = "authenticated-read"
     versioning {
       enabled = true
     }
     lifecycle { 
           prevent_destroy = false 
     }
     tags {
       Name = "remote_state-${var.environment}"
       Environment = "${var.environment}"
     } 
}
