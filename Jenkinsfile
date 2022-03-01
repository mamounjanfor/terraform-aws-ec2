pipeline{
     agent any
     tools {
         terraform 'terraform--11'
     } 
     
     stages{
         stage('Clone Repository') {
               steps {
               checkout scm
               }
          }
         stage('Terraform Init'){
             steps{
                 sh 'terraform init'
             }
         }
         stage('Terraform apply'){
             steps{
                 sh 'terraform apply --auto-approve'
             }
         }
          stage('Terraform destroy'){
             steps{
                 sh 'terraform destroy --auto-approve'
             }
         }
     }
}
