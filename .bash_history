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
terraform destroy
ssh -i ~/.ssh/id_rsa_tp2 ubuntu@54.196.19.236
git add.
git add .
git status
git commit -m "TP2 - VPC + EC2 + drift"
git config --global user.name "Gwenvaliah"
git config --global user.email "lea.baradeau2023@campus-eni.fr"
git branch
cp -r tp2 tp3
tflint --init
tflint
rm local.tf
rm main.tf 
rm data.tf
rm providers.tf 
ll
terraform fmt
terraform validate
state mv
terraform state mv
terraform state mv aws_subnet.public 'aws_subnet.main["public"]'
terraform state mv aws_subnet.private 'aws_subnet.main["private"]'
cd tp2
cd tp3
terraform plan
terraform apply
cd ..
rm -rf .git
