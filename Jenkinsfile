def _aws_creds = aws_creds.tokenize()
withEnv(_aws_creds) {
node('master') {
    stage('build') {
         // Checkout the app at the given commit sha from the webhook
        checkout scm
    }

    stage('deploy') {
     sshagent ([aws_creds_key]) {
        sh "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -b -u ubuntu -i ./inventory swarm.yml"
        sh "echo 'DEPLOYING DOCKER SWARM'"
       }
    }
  }
}
//     stage('deploying') {

//      wrap([$class: 'AnsiColorBuildWrapper', colorMapName: "xterm"]) {
//        ansiblePlaybook(
//            playbook: 'swarm.yml',
//            sudo(true),
//            inventory: './inventory',
//            colorized: true,
//            extraVars: [
//            login: 'mylogin'
//       ])

