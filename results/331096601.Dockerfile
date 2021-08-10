[app/sources/331096601.Dockerfile]
digraph {
  "sha256:58b45e2b7512199302a29c5729cd615d8a5201f2174984bf55db19aabd00d010" [label="docker-image://docker.io/brimstone/ubuntu:14.04" shape="ellipse"];
  "sha256:9878d1ce3f828049dc604369b76a4fa381517c42883cce13fc11bfe013586cd1" [label="/bin/sh -c apt-get update     && apt-get install -y unzip wget \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:0e3d5befece0077d039ededcb41894e214e85807a6e76f2be2a4fde9dda6d03a" [label="/bin/sh -c cd /tmp     && wget https://dl.bintray.com/mitchellh/consul/0.3.1_web_ui.zip        -O web_ui.zip     && unzip web_ui.zip     && mv dist /webui     && rm web_ui.zip" shape="box"];
  "sha256:6a2b514a7c6ee923cedc2fca5e94d72c9b9bd19907ee7d0744f4d6efe2dc2ee8" [label="/bin/sh -c apt-get update \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.clean     && apt-get install -y --no-install-recommends unzip wget     && apt-get clean     && rm -rf /var/lib/apt/lists     && cd /tmp     && wget https://dl.bintray.com/mitchellh/consul/0.3.1_web_ui.zip        -O web_ui.zip     && unzip web_ui.zip     && mv dist /webui     && rm web_ui.zip \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.dirty \t&& apt-get remove --purge -y $(diff /tmp/dpkg.clean /tmp/dpkg.dirty | awk '/^>/ {print $2}') \t&& rm /tmp/dpkg.*" shape="box"];
  "sha256:838589a50af5161fdfabd3ca329620d36698a68f3498f05ea3c24941e32c7264" [label="/bin/sh -c apt-get update \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.clean     && apt-get install -y --no-install-recommends git golang ca-certificates build-essential     && apt-get clean     && rm -rf /var/lib/apt/lists \t&& go get -v github.com/hashicorp/consul \t&& mv $GOPATH/bin/consul /usr/bin/consul \t&& dpkg -l | awk '/^ii/ {print $2}' > /tmp/dpkg.dirty \t&& apt-get remove --purge -y $(diff /tmp/dpkg.clean /tmp/dpkg.dirty | awk '/^>/ {print $2}') \t&& rm /tmp/dpkg.* \t&& rm -rf $GOPATH" shape="box"];
  "sha256:03cd9a591f4da36c2a931ef2e1810afa87d15fb68c484c76699341fe1d7fbffa" [label="sha256:03cd9a591f4da36c2a931ef2e1810afa87d15fb68c484c76699341fe1d7fbffa" shape="plaintext"];
  "sha256:58b45e2b7512199302a29c5729cd615d8a5201f2174984bf55db19aabd00d010" -> "sha256:9878d1ce3f828049dc604369b76a4fa381517c42883cce13fc11bfe013586cd1" [label=""];
  "sha256:9878d1ce3f828049dc604369b76a4fa381517c42883cce13fc11bfe013586cd1" -> "sha256:0e3d5befece0077d039ededcb41894e214e85807a6e76f2be2a4fde9dda6d03a" [label=""];
  "sha256:0e3d5befece0077d039ededcb41894e214e85807a6e76f2be2a4fde9dda6d03a" -> "sha256:6a2b514a7c6ee923cedc2fca5e94d72c9b9bd19907ee7d0744f4d6efe2dc2ee8" [label=""];
  "sha256:6a2b514a7c6ee923cedc2fca5e94d72c9b9bd19907ee7d0744f4d6efe2dc2ee8" -> "sha256:838589a50af5161fdfabd3ca329620d36698a68f3498f05ea3c24941e32c7264" [label=""];
  "sha256:838589a50af5161fdfabd3ca329620d36698a68f3498f05ea3c24941e32c7264" -> "sha256:03cd9a591f4da36c2a931ef2e1810afa87d15fb68c484c76699341fe1d7fbffa" [label=""];
}

