
pipeline {

    parameters {
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
        choice(name: 'ACCION', choices: ['', 'yes', 'no'], description: 'please select the option to destroy the resources')
    } 
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AZURE_SUBSCRIPTION_ID = credentials('AZURE_SUBSCRIPTION_ID')
        AZURE_CLIENT_ID = credentials('AZURE_CLIENT_ID')
        AZURE_CLIENT_SECRET = credentials('AZURE_CLIENT_SECRET')
        AZURE_TENANT_ID = credentials('AZURE_TENANT_ID')
    }

   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                        dir("terraformAZ")
                        {
                            git "https://github.com/RaaviSivajiTech/AzureInfra.git"
                        }
                    }
                }
            }

        stage('Plan') {
            steps {
                sh 'pwd;cd terraformAZ/ ; terraform init -upgrade'
                sh "pwd;cd terraformAZ/ ; terraform plan -out tfplan"
                sh 'pwd;cd terraformAZ/ ; terraform show -no-color tfplan > tfplan.txt'
            }
        }
        stage('Approval') {
           when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

           steps {
               script {
                    def plan = readFile 'terraformAZ/tfplan.txt'
                    input message: "Do you want to apply the plan?",
                    parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }

        stage('Apply') {
            steps {
                sh "pwd;cd terraformAZ/ ; terraform apply -input=false tfplan"
            }
        }
        
       stage('Destroy') {
            steps {
                sh 'echo "destroying the resources"'
                script{
                    if(params.ACCION == 'yes'){
                        sh "pwd;cd terraformAZ/ ; terraform destroy -auto-approve"
                    }
                    else
                    {
                        sh 'echo "resources destroyed sucessfully"'
                    }
                }                
            }
        }
    }
  }
