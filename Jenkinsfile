pipeline{
    agent {
        docker {
            image 'qaninja/rubywd'
        }
    }
    
    stages {
        stage('Build'){
            steps{
                echo 'Building or Resolving Dependencies'
                sh 'rm -f Gemfile.lock'
                sh 'bundle install'
            }
        }
        
        stage ('Test'){
            steps{
                echo 'Running regression teste'
                sh 'bundle exec cucumber -p ci'
                cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }
            post{
                always{
                   cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
                }
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
