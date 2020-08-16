FROM octopusdeploy/octopusdeploy

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl

RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
