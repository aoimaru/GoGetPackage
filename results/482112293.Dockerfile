[app/sources/482112293.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:cea5a27347c123a8c32cc839e67461b7b0d7a5a34d2048d7753460291a382f7a" [label="/bin/sh -c apt-get update     && apt-get install -yqq        build-essential        wget        tar        git        python-pip     && rm -rf /var/lib/apt/lists/*     && wget https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz     && tar -C /usr/local/ -xzvf go${GOVERSION}.linux-amd64.tar.gz     && mkdir -p /opt/go/src/ /opt/go/pkg/ /opt/go/bin/" shape="box"];
  "sha256:9d44f7808aa596ce9d8123b7fcea2a00f2033f15137fe9964c72d04b6f817eaa" [label="sha256:9d44f7808aa596ce9d8123b7fcea2a00f2033f15137fe9964c72d04b6f817eaa" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:cea5a27347c123a8c32cc839e67461b7b0d7a5a34d2048d7753460291a382f7a" [label=""];
  "sha256:cea5a27347c123a8c32cc839e67461b7b0d7a5a34d2048d7753460291a382f7a" -> "sha256:9d44f7808aa596ce9d8123b7fcea2a00f2033f15137fe9964c72d04b6f817eaa" [label=""];
}

