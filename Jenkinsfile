#!groovy

pipeline {
    agent { label 'ubuntu16' }

    stages {
        stage('Shellcheck') {
            steps {
                shellcheck()
            }
        }
        stage('Build') {
            steps {
                dockerBuildTagPush("prod volunteer stage".split())
            }
        }
    }
}
