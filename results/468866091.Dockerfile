[app/sources/468866091.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:726830b2490e97047ad4e8f46babe2fa1d5f7c18c1a175518d75cab0b384efcc" [label="/bin/sh -c apt-get update && apt-get install -y     tar     wget     bash     rsync     gcc     libfreetype6-dev     libhdf5-serial-dev     libpng-dev     libzmq3-dev     python3     python3-dev     python3-pip     unzip     pkg-config     software-properties-common" shape="box"];
  "sha256:22fcefca6b7525b4b9175c28abe214ac6f1f854028e1a035bd152fa605b68a54" [label="/bin/sh -c adduser --disabled-password     --gecos \"Default user\"     --uid ${NB_UID}     ${NB_USER}" shape="box"];
  "sha256:1109c5aad57361fa78d779372fab9ade7b865a15a8ad5cbe4b7c1b8dd3015984" [label="/bin/sh -c apt-get update &&     apt-get install -y openjdk-8-jdk &&     apt-get install -y ant &&     apt-get clean;" shape="box"];
  "sha256:09ab708e17ff5a4773bbe996eb4555ea7c48f506fa2e11326d283030f71cfa51" [label="/bin/sh -c apt-get update &&     apt-get install ca-certificates-java &&     apt-get clean &&     update-ca-certificates -f;" shape="box"];
  "sha256:08d9dd20fcd33941a269f3abb8046a62035717931807f2fff621586858c31651" [label="/bin/sh -c export JAVA_HOME" shape="box"];
  "sha256:af4347b9362a6065eafdc0147dc9155d35d9677174e2293f5878dce464faf97e" [label="/bin/sh -c echo \"export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/\" >> ~/.bashrc" shape="box"];
  "sha256:20b19ae17569d38cf5196e080aba63aa6f550b809c1141f8ba70e6b1f55c70ab" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:21139367cdd336592533ee1415d46ef5d2af6acd20a62413d81fc03befd30e16" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:3eb9cf9e9d0e1b21edaf80d0e809d5851bb80dc740780d7b0de8490c44a0c0c8" [label="/bin/sh -c pip3 install --no-cache-dir notebook==5.* numpy pyspark==2.4.0 spark-nlp==2.0.4 Keras scikit-spark scikit-learn scipy matplotlib pydot" shape="box"];
  "sha256:121c3ea78082262426b38b38a5e39ae8c2d9b4a403535aab64deb301155d86dd" [label="/bin/sh -c wget https://s3.amazonaws.com/auxdata.johnsnowlabs.com/spark-nlp-resources/glove.6B.100d.zip &&     mkdir -p /home/jovyan/data/embeddings/ &&     unzip glove.6B.100d.zip -d /home/jovyan/data/embeddings &&     rm glove.6B.100d.zip" shape="box"];
  "sha256:e2bee1e14d98aa4b8d3546cc2ef084a28e7e7c10818dc3fe6947195097871f6a" [label="/bin/sh -c mkdir -p /home/jovyan/strata" shape="box"];
  "sha256:4cf1fc1b61f93637039833d6487ad4b48f8a0717c518554ebbd32ceb009673f5" [label="/bin/sh -c mkdir -p /home/jovyan/jupyter" shape="box"];
  "sha256:af42f6481533f60bdf081314d12fa338ae9fe78204e979d5648cd27ae6cacb81" [label="local://context" shape="ellipse"];
  "sha256:7a3f0c9904f48ee6cb9642ffb94d1cea7fe67ce4c02aa585e9ae5e0a260fbf14" [label="copy{src=/data, dest=/home/jovyan/data}" shape="note"];
  "sha256:31ba8c98ac57ac04b01abd27d7b4b19be592be6b653d8115b9a4d1cc65fa1e91" [label="copy{src=/jupyter, dest=/home/jovyan/jupyter}" shape="note"];
  "sha256:2220fc6069e889d46215065543228cbc7b8e93e1fd5c1d7f4e7cc0a7890d16fb" [label="copy{src=/strata, dest=/home/jovyan/strata}" shape="note"];
  "sha256:1fbac53744cdad6f38098ec2d4511779161f7ec2afc2c215e870a8c786086445" [label="/bin/sh -c chown -R ${NB_UID} ${HOME}" shape="box"];
  "sha256:c769f42d0a898e8cd7a9dfaea74d40f678c3c17c8f1922736793f75cd062e386" [label="mkdir{path=/home/jovyan}" shape="note"];
  "sha256:de7f47b6f7e3ad4ea3c1fe454cd8adebfaa4e067b96daf183c92c84288bed661" [label="sha256:de7f47b6f7e3ad4ea3c1fe454cd8adebfaa4e067b96daf183c92c84288bed661" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:726830b2490e97047ad4e8f46babe2fa1d5f7c18c1a175518d75cab0b384efcc" [label=""];
  "sha256:726830b2490e97047ad4e8f46babe2fa1d5f7c18c1a175518d75cab0b384efcc" -> "sha256:22fcefca6b7525b4b9175c28abe214ac6f1f854028e1a035bd152fa605b68a54" [label=""];
  "sha256:22fcefca6b7525b4b9175c28abe214ac6f1f854028e1a035bd152fa605b68a54" -> "sha256:1109c5aad57361fa78d779372fab9ade7b865a15a8ad5cbe4b7c1b8dd3015984" [label=""];
  "sha256:1109c5aad57361fa78d779372fab9ade7b865a15a8ad5cbe4b7c1b8dd3015984" -> "sha256:09ab708e17ff5a4773bbe996eb4555ea7c48f506fa2e11326d283030f71cfa51" [label=""];
  "sha256:09ab708e17ff5a4773bbe996eb4555ea7c48f506fa2e11326d283030f71cfa51" -> "sha256:08d9dd20fcd33941a269f3abb8046a62035717931807f2fff621586858c31651" [label=""];
  "sha256:08d9dd20fcd33941a269f3abb8046a62035717931807f2fff621586858c31651" -> "sha256:af4347b9362a6065eafdc0147dc9155d35d9677174e2293f5878dce464faf97e" [label=""];
  "sha256:af4347b9362a6065eafdc0147dc9155d35d9677174e2293f5878dce464faf97e" -> "sha256:20b19ae17569d38cf5196e080aba63aa6f550b809c1141f8ba70e6b1f55c70ab" [label=""];
  "sha256:20b19ae17569d38cf5196e080aba63aa6f550b809c1141f8ba70e6b1f55c70ab" -> "sha256:21139367cdd336592533ee1415d46ef5d2af6acd20a62413d81fc03befd30e16" [label=""];
  "sha256:21139367cdd336592533ee1415d46ef5d2af6acd20a62413d81fc03befd30e16" -> "sha256:3eb9cf9e9d0e1b21edaf80d0e809d5851bb80dc740780d7b0de8490c44a0c0c8" [label=""];
  "sha256:3eb9cf9e9d0e1b21edaf80d0e809d5851bb80dc740780d7b0de8490c44a0c0c8" -> "sha256:121c3ea78082262426b38b38a5e39ae8c2d9b4a403535aab64deb301155d86dd" [label=""];
  "sha256:121c3ea78082262426b38b38a5e39ae8c2d9b4a403535aab64deb301155d86dd" -> "sha256:e2bee1e14d98aa4b8d3546cc2ef084a28e7e7c10818dc3fe6947195097871f6a" [label=""];
  "sha256:e2bee1e14d98aa4b8d3546cc2ef084a28e7e7c10818dc3fe6947195097871f6a" -> "sha256:4cf1fc1b61f93637039833d6487ad4b48f8a0717c518554ebbd32ceb009673f5" [label=""];
  "sha256:4cf1fc1b61f93637039833d6487ad4b48f8a0717c518554ebbd32ceb009673f5" -> "sha256:7a3f0c9904f48ee6cb9642ffb94d1cea7fe67ce4c02aa585e9ae5e0a260fbf14" [label=""];
  "sha256:af42f6481533f60bdf081314d12fa338ae9fe78204e979d5648cd27ae6cacb81" -> "sha256:7a3f0c9904f48ee6cb9642ffb94d1cea7fe67ce4c02aa585e9ae5e0a260fbf14" [label=""];
  "sha256:7a3f0c9904f48ee6cb9642ffb94d1cea7fe67ce4c02aa585e9ae5e0a260fbf14" -> "sha256:31ba8c98ac57ac04b01abd27d7b4b19be592be6b653d8115b9a4d1cc65fa1e91" [label=""];
  "sha256:af42f6481533f60bdf081314d12fa338ae9fe78204e979d5648cd27ae6cacb81" -> "sha256:31ba8c98ac57ac04b01abd27d7b4b19be592be6b653d8115b9a4d1cc65fa1e91" [label=""];
  "sha256:31ba8c98ac57ac04b01abd27d7b4b19be592be6b653d8115b9a4d1cc65fa1e91" -> "sha256:2220fc6069e889d46215065543228cbc7b8e93e1fd5c1d7f4e7cc0a7890d16fb" [label=""];
  "sha256:af42f6481533f60bdf081314d12fa338ae9fe78204e979d5648cd27ae6cacb81" -> "sha256:2220fc6069e889d46215065543228cbc7b8e93e1fd5c1d7f4e7cc0a7890d16fb" [label=""];
  "sha256:2220fc6069e889d46215065543228cbc7b8e93e1fd5c1d7f4e7cc0a7890d16fb" -> "sha256:1fbac53744cdad6f38098ec2d4511779161f7ec2afc2c215e870a8c786086445" [label=""];
  "sha256:1fbac53744cdad6f38098ec2d4511779161f7ec2afc2c215e870a8c786086445" -> "sha256:c769f42d0a898e8cd7a9dfaea74d40f678c3c17c8f1922736793f75cd062e386" [label=""];
  "sha256:c769f42d0a898e8cd7a9dfaea74d40f678c3c17c8f1922736793f75cd062e386" -> "sha256:de7f47b6f7e3ad4ea3c1fe454cd8adebfaa4e067b96daf183c92c84288bed661" [label=""];
}

