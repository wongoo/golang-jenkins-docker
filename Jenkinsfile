#!/usr/bin/env groovy

pipeline {
    agent any
    environment {
        BASEDIR = 'github.com/wangoo'
        PROJECT = 'golang-jenkins-docker'
    }
    stages {
        stage('Build Stage') {
            steps {
                script {
                    docker.image('golang:1.10').inside {
                       sh 'go version'
                       sh 'pwd'
                       sh 'env'
                       sh 'mkdir -p $GOPATH/src/$BASEDIR; ln -sf `pwd` $GOPATH/src/$BASEDIR/$PROJECT'
                       sh 'cd $GOPATH/src/$BASEDIR/* && make build '
                   }
                }
            }
        }
    }
}
