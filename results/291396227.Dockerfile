[app/sources/291396227.Dockerfile]
digraph {
  "sha256:bc5eb674793bddf48976d97e026003d8beb07126317e5e7c5f5210bfc9489ba9" [label="docker-image://docker.io/library/openjdk:8u141-jdk" shape="ellipse"];
  "sha256:c22e03fd8f3ade0f386e88c6098c7d1b0f874b09315c62d579d423e29479d59b" [label="/bin/sh -c apt-get update &&     apt-get install -y          apt-transport-https          ca-certificates          curl          gnupg2          software-properties-common &&     curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo \"$ID\")/gpg | apt-key add - &&     add-apt-repository        \"deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo \"$ID\")        $(lsb_release -cs)        stable\" &&     apt-get update &&     apt-get install -y docker-ce" shape="box"];
  "sha256:3f4bc453538df313c882633deb30969b55dd60533cf5e24f38a53394c2b40487" [label="/bin/sh -c apt-get update -y &&     apt-get install -y vim &&     apt-get install -y build-essential &&     apt-get install -y maven &&     update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java &&     apt-get remove -y --auto-remove && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:c8e4b1b7c695a4011dd3dc99b0eb9d4a9a724217a0c203b0eaf481df7d6ba1d1" [label="/bin/sh -c apt-get update -y &&     apt-get install -y python3-pip &&     pip3 install pyyaml &&     apt-get remove -y --auto-remove && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:1ca718b4de3c2e7c5dd980d63180e773f368d82b416fb6508de54c54a637273d" [label="mkdir{path=/work}" shape="note"];
  "sha256:63fc5cdbf4ce23241246bbed4b9fe42fea83704178a6c6c20c565bcc08355fc4" [label="sha256:63fc5cdbf4ce23241246bbed4b9fe42fea83704178a6c6c20c565bcc08355fc4" shape="plaintext"];
  "sha256:bc5eb674793bddf48976d97e026003d8beb07126317e5e7c5f5210bfc9489ba9" -> "sha256:c22e03fd8f3ade0f386e88c6098c7d1b0f874b09315c62d579d423e29479d59b" [label=""];
  "sha256:c22e03fd8f3ade0f386e88c6098c7d1b0f874b09315c62d579d423e29479d59b" -> "sha256:3f4bc453538df313c882633deb30969b55dd60533cf5e24f38a53394c2b40487" [label=""];
  "sha256:3f4bc453538df313c882633deb30969b55dd60533cf5e24f38a53394c2b40487" -> "sha256:c8e4b1b7c695a4011dd3dc99b0eb9d4a9a724217a0c203b0eaf481df7d6ba1d1" [label=""];
  "sha256:c8e4b1b7c695a4011dd3dc99b0eb9d4a9a724217a0c203b0eaf481df7d6ba1d1" -> "sha256:1ca718b4de3c2e7c5dd980d63180e773f368d82b416fb6508de54c54a637273d" [label=""];
  "sha256:1ca718b4de3c2e7c5dd980d63180e773f368d82b416fb6508de54c54a637273d" -> "sha256:63fc5cdbf4ce23241246bbed4b9fe42fea83704178a6c6c20c565bcc08355fc4" [label=""];
}

