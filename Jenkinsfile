pipeline{
    agent {
        docker {
            image "ruby"
        }
    }
    
    stages {
        stage('Build'){
            steps{
                echo 'Building or Resolving Dependencies'
                sh 'bundle install'
            }
        }
        
        stage ('Test'){
            steps{
                echo 'Running regression testd'
            }
            
        }
        
        stage ('UAT'){
            steps{
                echo 'Wait for User Acceptancer'
                input(message: 'Go to production?', ok: 'Yes')
            }
        }
        
        stage ('Prod'){
            steps{
                echo 'WebApp is Ready'
            }
        }
        
    }
}
