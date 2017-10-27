def _aws_creds = aws_creds.tokenize()
withEnv(_aws_creds) {
node('master') {
    stage('build') {
         // Checkout the app at the given commit sha from the webhook
        checkout scm
    }

    stage('waiting for AWS...') {
      sshagent ([aws_creds_key]) {
        sh "echo 'SLEEPING 30 seconds'"
        sh "sleep 30"

      }
    }

    stage('deploy') {
     sshagent ([aws_creds_key]) {
        sh "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -b -u ubuntu -i ./inventory swarm.yml"
        sh "echo 'DEPLOYING DOCKER SWARM'"
       }
    }
  }
}
