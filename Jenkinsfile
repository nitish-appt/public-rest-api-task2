pipeline{
    agent any
    
    stages{
        stage('check out'){
            steps{
                echo 'checkout is done'
                git branch: 'develop', url: 'https://github.com/nitish-appt/public-rest-api-task2.git'   
            }
            }
        
        stage('build trigger'){
            steps{
                echo 'build step docker'
                echo 'done'
            }
        }
        stage('Code Analysis') {
            environment {
                scannerHome = tool 'sonar'
            }
            steps {
                script {
                    withSonarQubeEnv('sonar') {
                        sh "${scannerHome}/bin/sonar \
                            -Dsonar.projectKey=project-finalcheck \
                            -Dsonar.projectName=project-finalcheck \
                            -Dsonar.projectVersion=1.0 \
                            -Dsonar.sources=."
                    }
                }
            }
        }

    
        
    }
}
