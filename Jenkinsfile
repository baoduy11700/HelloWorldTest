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
        fileExists 'test.txt'
        warnError(message: 'hello', catchInterruptions: true) {
          error 'helloo'
        }

        error 'hello'
        readFile(file: 'test1.txt', encoding: 'utf-8')
      }
    }
  }
}