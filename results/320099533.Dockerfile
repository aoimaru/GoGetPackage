[app/sources/320099533.Dockerfile]
digraph {
  "sha256:91638ede4c44b30528f20cbd6a5fec248ac63ae04123124f81a89dc899d3535f" [label="docker-image://docker.io/webdevops/base:ubuntu-15.10@sha256:70b882c952e51a915d645c0c316e23dad1dc619f61e72241c0b1c61a2ed05251" shape="ellipse"];
  "sha256:64b66498578eb0d932a943f7839f47b63c3f4bbb7cc29c35b62d8142a0c17f45" [label="local://context" shape="ellipse"];
  "sha256:d3e480dc8ff95925bcb1409f93ecd46ee74f47fe7381ca7544ca488f3c7b9f3f" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:e6bfe0cde794eee5ac16c7592c9898e393e106176aea8e20089acb43f188303d" [label="/bin/sh -c set -x     && apt-install         zip         unzip         bzip2         moreutils         dnsutils         openssh-client         rsync         git     && mkdir -p /var/lib/syslog-ng/     && /usr/local/bin/generate-locales     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:d588f6c292049cb01a8f43e2c7b11788356f0742641f9f09da7f841ba62da2f4" [label="sha256:d588f6c292049cb01a8f43e2c7b11788356f0742641f9f09da7f841ba62da2f4" shape="plaintext"];
  "sha256:91638ede4c44b30528f20cbd6a5fec248ac63ae04123124f81a89dc899d3535f" -> "sha256:d3e480dc8ff95925bcb1409f93ecd46ee74f47fe7381ca7544ca488f3c7b9f3f" [label=""];
  "sha256:64b66498578eb0d932a943f7839f47b63c3f4bbb7cc29c35b62d8142a0c17f45" -> "sha256:d3e480dc8ff95925bcb1409f93ecd46ee74f47fe7381ca7544ca488f3c7b9f3f" [label=""];
  "sha256:d3e480dc8ff95925bcb1409f93ecd46ee74f47fe7381ca7544ca488f3c7b9f3f" -> "sha256:e6bfe0cde794eee5ac16c7592c9898e393e106176aea8e20089acb43f188303d" [label=""];
  "sha256:e6bfe0cde794eee5ac16c7592c9898e393e106176aea8e20089acb43f188303d" -> "sha256:d588f6c292049cb01a8f43e2c7b11788356f0742641f9f09da7f841ba62da2f4" [label=""];
}

