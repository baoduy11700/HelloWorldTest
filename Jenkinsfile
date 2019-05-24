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
        writeFile(file: 'test1.txt', text: 'abc', encoding: 'utf-8')
      }
    }
    stage('test') {
      steps {
        warnError(message: 'there is error', catchInterruptions: true) {
          waitUntil() {
            fileExists 'bc.txt'
          }

        }

      }
    }
  }
}