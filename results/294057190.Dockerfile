[app/sources/294057190.Dockerfile]
digraph {
  "sha256:7618c1b19a1dd31dbab36a19a2b8c6e1aee0222116ae6bc8209eb3aecf7ac4aa" [label="docker-image://docker.io/yarnpkg/node-yarn:latest" shape="ellipse"];
  "sha256:d254d2f31cbfe0f97afaf02b5dd82186196bbc0cab76248b4da0f0fb1acd52b1" [label="/bin/sh -c apt-get -y update &&   apt-get install -y --no-install-recommends     fakeroot     lintian     rpm     ruby     ruby-dev     unzip   &&   apt-get clean &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d33bc69b5c8d9ac75ea5e463dc61594be7e3342a5351557e65e1c34b15a3ef50" [label="/bin/sh -c gem install fpm" shape="box"];
  "sha256:df286e4f05bedce37fc652b5bceab1c5bd105ef6f86378e37786dd8fc84ec2fe" [label="https://github.com/tcnksm/ghr/releases/download/v0.5.0/ghr_v0.5.0_linux_amd64.zip" shape="ellipse"];
  "sha256:470fa46db47452e0ba0b677ce2e959a08c2ea4549e4a0d7fb1545ce1320ce1e0" [label="copy{src=/ghr_v0.5.0_linux_amd64.zip, dest=/tmp/ghr.zip}" shape="note"];
  "sha256:91ff1cd4819db8d66c7ffd864c010292b98ce7ecb871aad1eae26eacdbca0b21" [label="/bin/sh -c unzip /tmp/ghr.zip -d /usr/local/bin/ && rm /tmp/ghr.zip" shape="box"];
  "sha256:7ff20e086b4c4a4a3c3a9945548e0d1589b90dc797dbdf4aef59fda79c103707" [label="sha256:7ff20e086b4c4a4a3c3a9945548e0d1589b90dc797dbdf4aef59fda79c103707" shape="plaintext"];
  "sha256:7618c1b19a1dd31dbab36a19a2b8c6e1aee0222116ae6bc8209eb3aecf7ac4aa" -> "sha256:d254d2f31cbfe0f97afaf02b5dd82186196bbc0cab76248b4da0f0fb1acd52b1" [label=""];
  "sha256:d254d2f31cbfe0f97afaf02b5dd82186196bbc0cab76248b4da0f0fb1acd52b1" -> "sha256:d33bc69b5c8d9ac75ea5e463dc61594be7e3342a5351557e65e1c34b15a3ef50" [label=""];
  "sha256:d33bc69b5c8d9ac75ea5e463dc61594be7e3342a5351557e65e1c34b15a3ef50" -> "sha256:470fa46db47452e0ba0b677ce2e959a08c2ea4549e4a0d7fb1545ce1320ce1e0" [label=""];
  "sha256:df286e4f05bedce37fc652b5bceab1c5bd105ef6f86378e37786dd8fc84ec2fe" -> "sha256:470fa46db47452e0ba0b677ce2e959a08c2ea4549e4a0d7fb1545ce1320ce1e0" [label=""];
  "sha256:470fa46db47452e0ba0b677ce2e959a08c2ea4549e4a0d7fb1545ce1320ce1e0" -> "sha256:91ff1cd4819db8d66c7ffd864c010292b98ce7ecb871aad1eae26eacdbca0b21" [label=""];
  "sha256:91ff1cd4819db8d66c7ffd864c010292b98ce7ecb871aad1eae26eacdbca0b21" -> "sha256:7ff20e086b4c4a4a3c3a9945548e0d1589b90dc797dbdf4aef59fda79c103707" [label=""];
}

