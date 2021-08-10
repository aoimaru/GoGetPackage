[app/sources/245301529.Dockerfile]
digraph {
  "sha256:305ee1e685275e955d7a2984c9e35f7d50fcaf8bcf1c552446072ada35bbc2a9" [label="docker-image://docker.io/jenkins/jenkins:latest@sha256:b16702b350fc92c9ee5b29fa69f96dd3b20ee10d8c6bd0a5bb08a3001bd166ed" shape="ellipse"];
  "sha256:b0a807f8048cb5af2418874f1424b8ce5ade82c42844bb192160002de6b0a128" [label="/bin/sh -c set +x   && env   && apt-get update   && apt-get -y upgrade   && apt-get -y install openrc openntpd tzdata python3 python3-pip jq git" shape="box"];
  "sha256:669e7ee2708cb518bae9da40374d19106e3d97dda1ef281bb03f2c37cb54cba6" [label="/bin/sh -c set +x   && apt-get install -y      lsb-release software-properties-common      apt-transport-https ca-certificates curl gnupg2   && curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -   && add-apt-repository     \"deb [arch=amd64] https://download.docker.com/linux/debian     $(lsb_release -cs)     stable\"   && apt-get update   && apt-get -y upgrade   && apt-get install -y docker-ce   && systemctl enable docker" shape="box"];
  "sha256:d2b1a0e4267bb633e171f3da878fcfecfcdd7416c5420bb1abced73073b7c0b6" [label="/bin/sh -c set +x     && usermod -aG staff,docker jenkins   && exec bash" shape="box"];
  "sha256:2263f1f267581e7526c8df90e24e5e27d9c83c0299a76f359655173b1071d499" [label="/bin/sh -c set +x   && curl -L \"https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m`\" > docker-compose   && cp docker-compose /bin/docker-compose   && chmod +x /bin/docker-compose" shape="box"];
  "sha256:5ad3d31b90ee478d1ed5df3158a3be309f2d24db5292068e05e533abc81825b8" [label="/bin/sh -c set +x   && pip3 install awscli --upgrade   && exec bash" shape="box"];
  "sha256:3aecf6aa785792c61e51f1c83f7b7ef9d1ee411ab282aba3db44b598843a9440" [label="/bin/sh -c set +x   && wget \"https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip\"   && unzip packer_${PACKER_VERSION}_linux_amd64.zip   && rm -rf packer_${PACKER_VERSION}_linux_amd64.zip   && mv packer /bin" shape="box"];
  "sha256:708e074f276eb8557cc0a2ca275e42b1afa19c2d72811f5e8924399cbfc5252d" [label="/bin/sh -c set +x   && wget \"https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip\"   && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip   && rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip   && mv terraform /bin" shape="box"];
  "sha256:214115f3af989148efeb2ea6b62db200570ea28dc42c7c9e2215e648f6e7cd42" [label="local://context" shape="ellipse"];
  "sha256:f20181cf687452d7bb9ca88f7bfe4e9e9f31a08a6859794b07e7ca046d123f61" [label="copy{src=/plugins.txt, dest=/usr/share/jenkins/plugins.txt}" shape="note"];
  "sha256:0b0871b483832f3cec10bdfc3fbb3e26831bd6746d11f30a524df0e3eaadfdfe" [label="/bin/sh -c set +x   && /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt" shape="box"];
  "sha256:73a06c7bb798379a82b1160f6b48b9db084b45dfcb1f408ac8e4094e2413437f" [label="/bin/sh -c set +x   && echo ''; echo '*** INSTALLED SOFTWARE VERSIONS ***';echo '';   cat /etc/*release; python3 --version;   docker version; docker-compose version;   git --version; jq --version; pip3 --version; aws --version;   packer version; terraform version; echo '';" shape="box"];
  "sha256:c5b459c2fce5cbc275b0964b65487d890dc062d501c5ec2119123626100e342a" [label="/bin/sh -c set +x   && apt-get clean" shape="box"];
  "sha256:11e46a54ea87c7002bc00aaa63451878a7192976b451819e11c02b55d239072a" [label="/bin/sh -c set +x   && cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime   && echo \"America/New_York\" >  /etc/timezone   && date" shape="box"];
  "sha256:71081bf9a9096d0d0ad153b54ea99b5b339070ae08b1671fd5fb0d0abe1ce9e1" [label="sha256:71081bf9a9096d0d0ad153b54ea99b5b339070ae08b1671fd5fb0d0abe1ce9e1" shape="plaintext"];
  "sha256:305ee1e685275e955d7a2984c9e35f7d50fcaf8bcf1c552446072ada35bbc2a9" -> "sha256:b0a807f8048cb5af2418874f1424b8ce5ade82c42844bb192160002de6b0a128" [label=""];
  "sha256:b0a807f8048cb5af2418874f1424b8ce5ade82c42844bb192160002de6b0a128" -> "sha256:669e7ee2708cb518bae9da40374d19106e3d97dda1ef281bb03f2c37cb54cba6" [label=""];
  "sha256:669e7ee2708cb518bae9da40374d19106e3d97dda1ef281bb03f2c37cb54cba6" -> "sha256:d2b1a0e4267bb633e171f3da878fcfecfcdd7416c5420bb1abced73073b7c0b6" [label=""];
  "sha256:d2b1a0e4267bb633e171f3da878fcfecfcdd7416c5420bb1abced73073b7c0b6" -> "sha256:2263f1f267581e7526c8df90e24e5e27d9c83c0299a76f359655173b1071d499" [label=""];
  "sha256:2263f1f267581e7526c8df90e24e5e27d9c83c0299a76f359655173b1071d499" -> "sha256:5ad3d31b90ee478d1ed5df3158a3be309f2d24db5292068e05e533abc81825b8" [label=""];
  "sha256:5ad3d31b90ee478d1ed5df3158a3be309f2d24db5292068e05e533abc81825b8" -> "sha256:3aecf6aa785792c61e51f1c83f7b7ef9d1ee411ab282aba3db44b598843a9440" [label=""];
  "sha256:3aecf6aa785792c61e51f1c83f7b7ef9d1ee411ab282aba3db44b598843a9440" -> "sha256:708e074f276eb8557cc0a2ca275e42b1afa19c2d72811f5e8924399cbfc5252d" [label=""];
  "sha256:708e074f276eb8557cc0a2ca275e42b1afa19c2d72811f5e8924399cbfc5252d" -> "sha256:f20181cf687452d7bb9ca88f7bfe4e9e9f31a08a6859794b07e7ca046d123f61" [label=""];
  "sha256:214115f3af989148efeb2ea6b62db200570ea28dc42c7c9e2215e648f6e7cd42" -> "sha256:f20181cf687452d7bb9ca88f7bfe4e9e9f31a08a6859794b07e7ca046d123f61" [label=""];
  "sha256:f20181cf687452d7bb9ca88f7bfe4e9e9f31a08a6859794b07e7ca046d123f61" -> "sha256:0b0871b483832f3cec10bdfc3fbb3e26831bd6746d11f30a524df0e3eaadfdfe" [label=""];
  "sha256:0b0871b483832f3cec10bdfc3fbb3e26831bd6746d11f30a524df0e3eaadfdfe" -> "sha256:73a06c7bb798379a82b1160f6b48b9db084b45dfcb1f408ac8e4094e2413437f" [label=""];
  "sha256:73a06c7bb798379a82b1160f6b48b9db084b45dfcb1f408ac8e4094e2413437f" -> "sha256:c5b459c2fce5cbc275b0964b65487d890dc062d501c5ec2119123626100e342a" [label=""];
  "sha256:c5b459c2fce5cbc275b0964b65487d890dc062d501c5ec2119123626100e342a" -> "sha256:11e46a54ea87c7002bc00aaa63451878a7192976b451819e11c02b55d239072a" [label=""];
  "sha256:11e46a54ea87c7002bc00aaa63451878a7192976b451819e11c02b55d239072a" -> "sha256:71081bf9a9096d0d0ad153b54ea99b5b339070ae08b1671fd5fb0d0abe1ce9e1" [label=""];
}

