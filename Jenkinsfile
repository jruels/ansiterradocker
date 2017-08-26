def _env_vars = env_vars.tokenize()
withEnv(_env_vars) {
node('master') {
    stage('build') {
         // Checkout the app at the given commit sha from the webhook
        checkout scm
    }

//    stage('deploy') {
//        sh "/var/jenkins_home/.local/bin/ansible-playbook -i ./inventory swarm.yml"
//        sh "echo 'DEPLOYING DOCKER SWARM'"
//       }
     stage('deploying')

      wrap([$class: 'AnsiColorBuildWrapper', colorMapName: "xterm"]) {
        ansiblePlaybook(
            playbook: 'swarm.yml',
            inventory: './inventory',
            colorized: true)
     }
  }
}

