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
                sh 'docker compose build'
                sh 'docker compose up'
            }
        }
        stage('test'){
            steps{
                echo 'text it'
            }
        }
        
    }
}
