pipeline{
    agent any
    triggers{
        pollSCM('H */4 * * 1-5')
    }
    stages{
        stage('check out'){
            steps{
                git branch: 'develop', url: 'https://github.com/nitish-appt/public-rest-api-task2.git'
                echo 'checkout is done'
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
                
            }
        }
        
    }
}
