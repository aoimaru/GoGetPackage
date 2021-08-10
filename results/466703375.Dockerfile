[app/sources/466703375.Dockerfile]
digraph {
  "sha256:a82657dc9009ab4ecab0a966d899b2972800cfe1ee9d42fc736a0cac1581ac52" [label="docker-image://docker.io/library/centos:7@sha256:0f4ec88e21daf75124b8a9e5ca03c37a5e937e0e108a255d890492430789b60e" shape="ellipse"];
  "sha256:3e05d6e534dc75b774d2c0191032e5160ed5282f165fe68b0835363f30cf8567" [label="/bin/sh -c set -x     && groupadd --system --gid 101 elastic     && useradd --system -g elastic -m --home /eck -c \"eck user\" --shell /bin/false --uid 101 elastic     && chmod 755 /eck" shape="box"];
  "sha256:1389f50a585fe5bd528108b3b3d68c109ee419a5a87110e40f43372be99c0202" [label="mkdir{path=/eck}" shape="note"];
  "sha256:bdb68703c211aee92c206f0c718510a8fdacdbea2846caea43b507ab95d8d8d5" [label="local://context" shape="ellipse"];
  "sha256:63a1ce30b6f7856066bd7143c5bd99ca1bab96a6639c867eae712d80c52c7c58" [label="docker-image://docker.io/library/golang:1.11@sha256:e972c78795b22d5cfab02ac410aa2305fcc036319a7af51065d1af583cd3ec04" shape="ellipse"];
  "sha256:12ce9055bb03cb9aba43ed019918fb4376c615ad41a049461b11f209b0631f1d" [label="mkdir{path=/go/src/github.com/elastic/cloud-on-k8s/operators}" shape="note"];
  "sha256:e0b67d3f6273c812874e41c842f506b70bcc9cecd38c4ef567dc8ecc43b3e88f" [label="copy{src=/pkg, dest=/go/src/github.com/elastic/cloud-on-k8s/operators/pkg/}" shape="note"];
  "sha256:9da12d5e2777af5fc9fc5acecca222d69e3985c945d0ae414bf76d071439505b" [label="copy{src=/cmd, dest=/go/src/github.com/elastic/cloud-on-k8s/operators/cmd/}" shape="note"];
  "sha256:8c67073e85d5d26415841047d6e477ded1592ad2f5ac73e6157a3f13ebeefced" [label="copy{src=/vendor, dest=/go/src/github.com/elastic/cloud-on-k8s/operators/vendor/}" shape="note"];
  "sha256:8308d55f2fabc08019573cba83e89ec6783ef939579eb216a9c747dc06b17d12" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 \t\tgo build \t\t\t-ldflags \"$GO_LDFLAGS\" -tags=\"$GO_TAGS\" -a \t\t\t-o elastic-operator github.com/elastic/cloud-on-k8s/operators/cmd" shape="box"];
  "sha256:61877b7219c21d583cfffd7b3174fa0bdb7e3c60b81f23263226b3d6200e3d3a" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -tags=\"$GO_TAGS\" -a -o process-manager github.com/elastic/cloud-on-k8s/operators/cmd/process-manager" shape="box"];
  "sha256:97ba88cea66fbb63c0490bf340991b3f766f547b8b4e68e5c6bd2f5243d4c809" [label="copy{src=/go/src/github.com/elastic/cloud-on-k8s/operators/elastic-operator, dest=/eck/}" shape="note"];
  "sha256:4c955388bf8dc0fab19d264511172c22ece5a228cd9eb2bd1f0c09ab70a23a19" [label="copy{src=/go/src/github.com/elastic/cloud-on-k8s/operators/process-manager, dest=/eck/}" shape="note"];
  "sha256:b1e423e2189937c194bc11cf10a97a384564276648937ca5641ecaaac8d5c92a" [label="sha256:b1e423e2189937c194bc11cf10a97a384564276648937ca5641ecaaac8d5c92a" shape="plaintext"];
  "sha256:a82657dc9009ab4ecab0a966d899b2972800cfe1ee9d42fc736a0cac1581ac52" -> "sha256:3e05d6e534dc75b774d2c0191032e5160ed5282f165fe68b0835363f30cf8567" [label=""];
  "sha256:3e05d6e534dc75b774d2c0191032e5160ed5282f165fe68b0835363f30cf8567" -> "sha256:1389f50a585fe5bd528108b3b3d68c109ee419a5a87110e40f43372be99c0202" [label=""];
  "sha256:63a1ce30b6f7856066bd7143c5bd99ca1bab96a6639c867eae712d80c52c7c58" -> "sha256:12ce9055bb03cb9aba43ed019918fb4376c615ad41a049461b11f209b0631f1d" [label=""];
  "sha256:12ce9055bb03cb9aba43ed019918fb4376c615ad41a049461b11f209b0631f1d" -> "sha256:e0b67d3f6273c812874e41c842f506b70bcc9cecd38c4ef567dc8ecc43b3e88f" [label=""];
  "sha256:bdb68703c211aee92c206f0c718510a8fdacdbea2846caea43b507ab95d8d8d5" -> "sha256:e0b67d3f6273c812874e41c842f506b70bcc9cecd38c4ef567dc8ecc43b3e88f" [label=""];
  "sha256:e0b67d3f6273c812874e41c842f506b70bcc9cecd38c4ef567dc8ecc43b3e88f" -> "sha256:9da12d5e2777af5fc9fc5acecca222d69e3985c945d0ae414bf76d071439505b" [label=""];
  "sha256:bdb68703c211aee92c206f0c718510a8fdacdbea2846caea43b507ab95d8d8d5" -> "sha256:9da12d5e2777af5fc9fc5acecca222d69e3985c945d0ae414bf76d071439505b" [label=""];
  "sha256:9da12d5e2777af5fc9fc5acecca222d69e3985c945d0ae414bf76d071439505b" -> "sha256:8c67073e85d5d26415841047d6e477ded1592ad2f5ac73e6157a3f13ebeefced" [label=""];
  "sha256:bdb68703c211aee92c206f0c718510a8fdacdbea2846caea43b507ab95d8d8d5" -> "sha256:8c67073e85d5d26415841047d6e477ded1592ad2f5ac73e6157a3f13ebeefced" [label=""];
  "sha256:8c67073e85d5d26415841047d6e477ded1592ad2f5ac73e6157a3f13ebeefced" -> "sha256:8308d55f2fabc08019573cba83e89ec6783ef939579eb216a9c747dc06b17d12" [label=""];
  "sha256:8308d55f2fabc08019573cba83e89ec6783ef939579eb216a9c747dc06b17d12" -> "sha256:61877b7219c21d583cfffd7b3174fa0bdb7e3c60b81f23263226b3d6200e3d3a" [label=""];
  "sha256:1389f50a585fe5bd528108b3b3d68c109ee419a5a87110e40f43372be99c0202" -> "sha256:97ba88cea66fbb63c0490bf340991b3f766f547b8b4e68e5c6bd2f5243d4c809" [label=""];
  "sha256:61877b7219c21d583cfffd7b3174fa0bdb7e3c60b81f23263226b3d6200e3d3a" -> "sha256:97ba88cea66fbb63c0490bf340991b3f766f547b8b4e68e5c6bd2f5243d4c809" [label=""];
  "sha256:97ba88cea66fbb63c0490bf340991b3f766f547b8b4e68e5c6bd2f5243d4c809" -> "sha256:4c955388bf8dc0fab19d264511172c22ece5a228cd9eb2bd1f0c09ab70a23a19" [label=""];
  "sha256:61877b7219c21d583cfffd7b3174fa0bdb7e3c60b81f23263226b3d6200e3d3a" -> "sha256:4c955388bf8dc0fab19d264511172c22ece5a228cd9eb2bd1f0c09ab70a23a19" [label=""];
  "sha256:4c955388bf8dc0fab19d264511172c22ece5a228cd9eb2bd1f0c09ab70a23a19" -> "sha256:b1e423e2189937c194bc11cf10a97a384564276648937ca5641ecaaac8d5c92a" [label=""];
}

