pipeline {
  agent any
  stages {
    stage('testNumber') {
      steps {
        echo 'hello'
      }
    }
    stage('aftertest') {
      steps {
        fileExists 'abc.txt'
        writeFile(file: 'test', text: 'abc', encoding: 'utf-8')
      }
    }
  }
}