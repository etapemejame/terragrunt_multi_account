parameters {
  string(name: 'tfm', description: 'Terraform module to act upon.')
}

pipeline {
    agent any
    stages {
        stage('TF Plan') {
            steps {
            // execute plan and capture plan output 
            sh(
                label:  'Terraform Plan',
                script: "terragrunt plan -out=plan.tfplan -no-color --terragrunt-source '/var/temp/tf_modules//${params.tfm}'"
            )
            }
        }
        stage('TF Apply') {
            // only execute stage if apply is desired
            when { expression { return env.Action == 'apply' } }
            steps {
            // query for user approval of plan
            input(message: 'Click "proceed" to approve the above Terraform Plan')
            // apply the plan if approved
            sh(
                label:  'Terraform Apply',
                script: 'terraform apply -auto-approve -input=false -no-color plan.tfplan'
            )
            }
        }
    }
}

