node('master') {
    stage('build') {
         // Checkout the app at the given commit sha from the webhook
        checkout scm
    }

//    stage('deploy') {
//        sh "ansible-playbook -i ./inventory swarm.yml"
//        sh "echo 'DEPLOYING DOCKER SWARM'"
//       }
     stage('deploying')

      wrap([$class: 'AnsiColorBuildWrapper', colorMapName: "xterm"]) {
        ansiblePlaybook(
            playbook: 'swarm.yml',
            inventory: 'inventory',
            colorized: true)
    }
}

