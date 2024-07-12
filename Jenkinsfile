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

        
        stage('test'){
            steps{
                echo 'text it'
            }
        }
        
    }
}
