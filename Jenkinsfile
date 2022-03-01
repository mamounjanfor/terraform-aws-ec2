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
         satage('Terraform Init'){
             steps{
                 sh 'terraform init'
             }
         }
         satage('Terraform apply'){
             steps{
                 sh 'terraform apply --auto-approve'
             }
         }
     }
}
