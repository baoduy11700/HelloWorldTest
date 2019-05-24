pipeline {
  agent any
  stages {
    stage('testNumber') {
      steps {
        echo 'hello'
      }
    }
    stage('aftertest') {
      parallel {
        stage('aftertest') {
          steps {
            fileExists 'abc.txt'
            writeFile(file: 'test.txt', text: 'abc', encoding: 'utf-8')
          }
        }
        stage('test') {
          steps {
            error 'no file'
            readFile(file: 'test.txt', encoding: 'uft-8')
            waitUntil()
          }
        }
      }
    }
  }
}