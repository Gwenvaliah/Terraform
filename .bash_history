pwd
ls
terraform version
aws --version
exit
pwd
ls
terraform version
aws --version
exit
mkdir tp1
cd tp1
cat terraform.tfstate
rm -R tp2
mkdir tp2
git init
terraform init
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa_tp2 -N ""
aws ec2 import-key-pair \ 
  --region eu-west-3 \ 
  --key-name tf-<prenom>-dev-key \ 
  --public-key-material fileb://~/.ssh/id_rsa_tp2.pub
aws ec2 import-key-pair --region eu-west-3 --key-name tf-lea-dev-key --public-key-material fileb://~/.ssh/id_rsa_tp2.pub
aws ec2 import-key-pair --region us-east-1 --key-name tf-lea-dev-key --public-key-material fileb://~/.ssh/id_rsa_tp2.pub
cd .ssh
cat id_rsa_tp2.pub 
cd ..
ll
cd tp2
terraform apply
terraform fmt
terraform validate
terraform destroy
terraform plan
