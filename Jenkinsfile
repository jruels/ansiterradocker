node('master') {
    try {
        stage('build') {
            // Checkout the app at the given commit sha from the webhook
            checkout scm
        }

       stage('deploy') {
            sh "ansible-playbook -i ./inventory swarm.yml"
            sh "echo 'DEPLOYING DOCKER SWARM'"
            }
    }
}
