cat <<EOF > environments/prod/backend.tfvars
bucket         = "YOUR_S3_BUCKET_NAME"
key            = "prod/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "terraform-locks"
encrypt        = true
EOF
