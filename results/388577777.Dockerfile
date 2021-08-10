[app/sources/388577777.Dockerfile]
digraph {
  "sha256:ff5ce466e6302e6c5034774f298540ae771c97330371e3070acdd42b346ee484" [label="docker-image://docker.io/library/nginx-fpm:latest" shape="ellipse"];
  "sha256:e717e13f205448c49181c454b11b37428a9bf75e6e598b24ae60a8ffa27c8f5b" [label="/bin/sh -c mkdir -p /opt/phantomjs/bin" shape="box"];
  "sha256:6dc77c09aded2788665d777b4146e53a986dd94716d7028db266f7505a4b57c3" [label="local://context" shape="ellipse"];
  "sha256:92086e431fea53422e83e6b4b93d0fad83759695bb1bdd142c4b10e0b232602d" [label="copy{src=/phantomjs.bin, dest=/opt/phantomjs/bin/phantomjs}" shape="note"];
  "sha256:7cf4b0f1e649695a4b3fb76bbd13d6cd7ecca0c3fa411eea622b4dd0b3849bfb" [label="copy{src=/nginx.conf, dest=/docker/configuration/nginx.conf}" shape="note"];
  "sha256:416fbff80ef8ca56482e027395ab52ff5d29c0c0e9b0409238dd1e16972a981a" [label="/bin/sh -c apt-get update && apt-get install -y php5-curl mtr-tiny nmap" shape="box"];
  "sha256:ddbfde02bddc567616b5affaf069d69be6b3b66def2c38b6a9c6ee930f356ff2" [label="sha256:ddbfde02bddc567616b5affaf069d69be6b3b66def2c38b6a9c6ee930f356ff2" shape="plaintext"];
  "sha256:ff5ce466e6302e6c5034774f298540ae771c97330371e3070acdd42b346ee484" -> "sha256:e717e13f205448c49181c454b11b37428a9bf75e6e598b24ae60a8ffa27c8f5b" [label=""];
  "sha256:e717e13f205448c49181c454b11b37428a9bf75e6e598b24ae60a8ffa27c8f5b" -> "sha256:92086e431fea53422e83e6b4b93d0fad83759695bb1bdd142c4b10e0b232602d" [label=""];
  "sha256:6dc77c09aded2788665d777b4146e53a986dd94716d7028db266f7505a4b57c3" -> "sha256:92086e431fea53422e83e6b4b93d0fad83759695bb1bdd142c4b10e0b232602d" [label=""];
  "sha256:92086e431fea53422e83e6b4b93d0fad83759695bb1bdd142c4b10e0b232602d" -> "sha256:7cf4b0f1e649695a4b3fb76bbd13d6cd7ecca0c3fa411eea622b4dd0b3849bfb" [label=""];
  "sha256:6dc77c09aded2788665d777b4146e53a986dd94716d7028db266f7505a4b57c3" -> "sha256:7cf4b0f1e649695a4b3fb76bbd13d6cd7ecca0c3fa411eea622b4dd0b3849bfb" [label=""];
  "sha256:7cf4b0f1e649695a4b3fb76bbd13d6cd7ecca0c3fa411eea622b4dd0b3849bfb" -> "sha256:416fbff80ef8ca56482e027395ab52ff5d29c0c0e9b0409238dd1e16972a981a" [label=""];
  "sha256:416fbff80ef8ca56482e027395ab52ff5d29c0c0e9b0409238dd1e16972a981a" -> "sha256:ddbfde02bddc567616b5affaf069d69be6b3b66def2c38b6a9c6ee930f356ff2" [label=""];
}

