def _aws_creds = aws_creds.tokenize()
withEnv(_aws_creds) {
node('master') {
    stage('build') {
         // Checkout the app at the given commit sha from the webhook
        checkout scm
    }

//    stage('deploy') {
//        sh "/var/jenkins_home/.local/bin/ansible-playbook -i ./inventory swarm.yml"
//        sh "echo 'DEPLOYING DOCKER SWARM'"
//       }
     stage('deploying') {
     sshagent ([aws_creds_key]) {

      wrap([$class: 'AnsiColorBuildWrapper', colorMapName: "xterm"]) {
        ansiblePlaybook(
            playbook: 'swarm.yml',
            inventory: './inventory',
            colorized: true)
      }
     }
  }
}
}

