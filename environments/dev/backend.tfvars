cat <<EOF > environments/dev/backend.tfvars
bucket         = "YOUR_S3_BUCKET_NAME"
key            = "dev/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-locks"
encrypt        = true
EOF
